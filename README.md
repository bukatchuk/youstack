# YouStack
Youstack is a comprehensive solution for automating the management and configuration of infrastructure and applications at any scale.

# Install 
```
$ git clone git@github.com:bukatchuk/youstack.git && cd youstack
$ make install
🔍 [1/6] Checking prerequisites...
📝 [2/6] Creating script...
🔧 [3/6] Installing binary...
✅ ys installed to /usr/local/bin/ys
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