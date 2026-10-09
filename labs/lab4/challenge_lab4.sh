#!/bin/bash
printf '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n'
figlet "system"
echo
echo -e "DATE UTC:	$(date -u '+%m/%d/%y %H:%M:%S')"
echo -e "HOSTNAME:	$(hostname)"
echo -e "UPTIME:		$(uptime -p)"
echo -e "USER:	\t$(whoami)"
figlet "memory"
echo
echo -e "Mem:	\t$(free -m -h)"
figlet "DISK"
df -h /
printf '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n'
