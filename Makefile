-include .env

.PHONY: install uninstall clean test info

YS_SCRIPT = #!/usr/bin/env bash
YS_SCRIPT += set -euo pipefail
YS_SCRIPT += ''
YS_SCRIPT += # YouStack $(YS_VERSION) - transparent salt wrapper
YS_SCRIPT += # Usage: $(YS_NAME) [exactly same as salt]
YS_SCRIPT += ''
YS_SCRIPT += SALT_BIN="${SALT_BIN:-salt}"
YS_SCRIPT += exec "$${SALT_BIN}" "$$@"

SALT_VERSION := $(SALTSTACK_VERSION)
SALT_PACKAGES := salt-common salt-master salt-minion salt-ssh salt-syndic salt-cloud salt-api

install: salt check-prereqs create-script install-bin install-aliases reload-bash test-final
	@echo ""
	@echo "🎉 YouStack $(YS_VERSION) installed successfully!"
	@echo "Commands: $(YS_NAME), ysc, yssh"

salt:
	@echo "==> Setting up SaltStack $(SALT_VERSION)"
	@sudo mkdir -m 755 -p /etc/apt/keyrings
	@curl -fsSL https://packages.broadcom.com/artifactory/api/security/keypair/SaltProjectKey/public | \
		gpg --dearmor | sudo tee /etc/apt/keyrings/salt-archive-keyring.pgp > /dev/null && \
		echo "✓ GPG key added"
	@curl -fsSL https://github.com/saltstack/salt-install-guide/releases/latest/download/salt.sources | \
		sudo tee /etc/apt/sources.list.d/salt.sources > /dev/null && \
		echo "✓ Repository added"
	@sudo apt update -y && echo "✓ Package list updated"
	@for pkg in $(SALT_PACKAGES); do \
		echo "==> Installing $${pkg}=$(SALT_VERSION)"; \
		sudo apt-get install -y "$${pkg}=$(SALT_VERSION)"; \
		echo "✓ $${pkg} installed"; \
	done
	@echo "✅ SaltStack installation complete!"

check-prereqs:
	@echo "🔍 [1/6] Checking prerequisites..."
	@command -v salt >/dev/null 2>&1 || (echo "❌ salt not found"; exit 1)
	@command -v salt-call >/dev/null 2>&1 || (echo "❌ salt-call not found"; exit 1)
	@command -v salt-ssh >/dev/null 2>&1 || (echo "❌ salt-ssh not found"; exit 1)
	@command -v sudo >/dev/null 2>&1 || (echo "❌ sudo not found"; exit 1)

create-script:
	@echo "📝 [2/6] Creating script..."
	@printf '%s\n' $(YS_SCRIPT) > /tmp/$(YS_NAME)

install-bin:
	@echo "🔧 [3/6] Installing binary..."
	@chmod +x /tmp/$(YS_NAME)
	@sudo install -m 755 /tmp/$(YS_NAME) $(YS_BIN)

install-aliases:
	@echo "📋 [4/6] Installing aliases..."
	@if ! grep -q "YouStack aliases" $(BASHRC); then \
		echo "# YouStack aliases v$(YS_VERSION)" >> $(BASHRC); \
		echo "alias $(YS_NAME)='$(SALT_BIN)'" >> $(BASHRC); \
		echo "alias ysc='salt-call'" >> $(BASHRC); \
		echo "alias yssh='salt-ssh'" >> $(BASHRC); \
		echo "✅ Aliases added to $(BASHRC)"; \
	else \
		echo "ℹ️  Aliases already exist"; \
	fi

reload-bash:
	@echo "🔄 [5/6] Reloading bash..."
	@source $(BASHRC) 2>/dev/null || true

test-final:
	@echo "✅ [6/6] Final test..."
	@if command -v $(YS_NAME) >/dev/null 2>&1; then \
		echo "✅ $(YS_NAME) ready!"; \
	else \
		echo "❌ Installation failed"; exit 1; \
	fi

uninstall:
	@echo "🗑️  Uninstalling..."
	@sudo rm -f $(YS_BIN)
	@sed -i.bak '/YouStack aliases/,+4d' $(BASHRC) 2>/dev/null || true
	@rm -f $(BASHRC).bak
	@echo "✅ Uninstalled"

clean:
	rm -f /tmp/$(YS_NAME)

info:
	@echo "YouStack v$(YS_VERSION)"
	@echo "Bin: $(YS_BIN)"
	@echo "SALT_BIN: $(SALT_BIN)"