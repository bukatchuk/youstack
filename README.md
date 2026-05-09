# YouStack
Youstack is a comprehensive solution for automating the management and configuration of infrastructure and applications at any scale.

# Install 
```
git clone git@github.com:bukatchuk/youstack.git && cd youstack; make install
```
Usage
```
# Works identically to salt
ys '*' test.ping
ys -G 'os:Ubuntu' pkg.list_installed
ys web* state.highstate

# Aliases examples
ysc grains.items    # ysc === salt-call
yssh '*' test.ping. # yssh === salt-ssh
```