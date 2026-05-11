# YouStack
YouStack - A transparent SaltStack wrapper.
> [!IMPORTANT]
> This guide provides instructions for installing Salt on [Salt supported operating systems](https://docs.saltproject.io/salt/install-guide/en/latest/topics/salt-supported-operating-systems.html#salt-supported-operating-systems). It also explains how to configure Salt, start Salt services, and verify your installation.
## Quick start
```
$ git clone git@github.com:bukatchuk/youstack.git && cd youstack; make install
```
## Result
```
🔍 [1/6] Checking prerequisites...
📝 [2/6] Creating script...
🔧 [3/6] Installing binary...
📋 [4/6] Installing aliases...
✅ Aliases added to /home/user/.bashrc
🔄 [5/6] Reloading bash...
✅ [6/6] Final test...
✅ ys ready!

🎉 YouStack 1.0.0 installed successfully!
Commands: ys, ysc, yssh
```
# Usage
```
# Works identically to salt
ys '*' test.ping
ys -G 'os:Ubuntu' pkg.list_installed
ys web* state.highstate

# Aliases examples
ysc grains.items    # ysc === salt-call
yssh '*' test.ping. # yssh === salt-ssh
```
