#! /bin/sh
#wsl_domain='wsl.ip'
win_domain='win.ip'
#export WSLIP=$(ip addr show eth0 | grep 'inet ' | cut -f 6 -d ' ' | cut -f 1 -d '/')
export WINIP=$(cat /etc/resolv.conf | grep 'nameserver' | cut -f 2 -d ' ')
#sed -i 's/^'$wsl_domain'.*/'$wsl_domain' '$WSLIP'/' /mnt/c/Windows/System32/drivers/etc/hosts
#sed -i 's/^.*'$wsl_domain'.*/'$WSLIP' '$wsl_domain' /' /etc/hosts
echo $WINIP $win_domain >> /etc/hosts
