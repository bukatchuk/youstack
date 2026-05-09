# YouStack
Youstack is a comprehensive solution for automating the management and configuration of infrastructure and applications at any scale.

# Install
Clone repo and 
```
git clone git@github.com:bukatchuk/youstack.git; \
cd youstack; \
chmod +x ys; \
mv ys /usr/local/bin/ys; \
cat >> ~/.bashrc << 'EOF'

# YouStack aliases
alias ys='salt'
alias ysc='salt-call' 
alias yssh='salt-ssh'

EOF; \
\
source ~/.bashrc
```
Examples
```
# Works identically to salt
ys '*' test.ping
ys -G 'os:Ubuntu' pkg.list_installed
ys web* state.highstate

# Aliases examples
ysc grains.items    # ysc === salt-call
yssh '*' test.ping. # yssh === salt-ssh
```