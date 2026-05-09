.PHONY: install uninstall clean test info

YS_VERSION := 1.0.0
YS_NAME := ys
YS_BIN := /usr/local/bin/$(YS_NAME)
BASHRC := ~/.bashrc

YS_SCRIPT := |\
#!/usr/bin/env bash

set -euo pipefail

# YouStack $(YS_VERSION) - transparent salt wrapper
# Usage: $(YS_NAME) [exactly same as salt]

SALT_BIN="${SALT_BIN:-salt}"

exec "$${SALT_BIN}" "$$@"

install:
	chmod +x /tmp/$(YS_NAME)
	sudo mv /tmp/$(YS_NAME) $(YS_BIN)
	@echo "✅ $(YS_NAME) installed to $(YS_BIN)"
	
	if ! grep -q "YouStack aliases" $(BASHRC); then \
		echo "📝 Adding aliases to $(BASHRC)"; \
		cat >> $(BASHRC) << 'EOF'

		# YouStack aliases v$(YS_VERSION)

		alias $(YS_NAME)='salt'
		alias ysc='salt-call'
		alias yssh='salt-ssh'
		EOF
		source $(BASHRC); \
	else \
		echo "ℹ️  Aliases already exist"; \
	fi
	@echo "✅ Installation complete!"
	@echo "Usage: $(YS_NAME) '*' test.ping"

uninstall:
	sudo rm -f $(YS_BIN)
	sed -i.bak '/YouStack aliases/,+4d' $(BASHRC) 2>/dev/null || true
	rm -f $(BASHRC).bak
	@echo "🗑️  Uninstalled"

test:
	@if command -v $(YS_NAME) >/dev/null 2>&1; then \
		echo "✅ $(YS_NAME) OK"; \
		$(YS_NAME) --version 2>/dev/null || echo "ℹ️  Version OK"; \
	else \
		echo "❌ $(YS_NAME) not found"; exit 1; \
	fi

info:
	@echo "YouStack v$(YS_VERSION)"
	@echo "Bin: $(YS_BIN)"
	@echo "Aliases: $(YS_NAME), ysc, yssh"