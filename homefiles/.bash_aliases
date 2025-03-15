
# Enable color support for ls and add handy aliases
alias ls='ls --color=auto'
#alias dir='dir --color=auto'
#alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long-running commands
alias alert='notify-send --urgency=low -i "$( [ $? = 0 ] && echo terminal || echo error )" "$( history | tail -n1 | sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


#-------------------------------
# Custom Aliases
# ------------------------------

alias ll='ls -lah'  # List files with details
alias gs='git status'  # Show Git status


alias please='sudo !!'  # Run last command as sudo
alias weather='curl wttr.in'  # Get the weather for your location


alias cls='clear'  # Clear terminal screen
alias untar='tar -xvf'  # Extract tar files
alias ports='netstat -tulanp'  # Show open network ports
alias dfh='df -h'  # Show disk usage in human-readable format
alias dux='du -sh * | sort -rh'  # Show disk usage sorted by size
alias myip='curl ifconfig.me'  # Show your public IP address
alias top10mem='ps aux --sort=-%mem | head -10'  # Show top 10 memory-consuming processes



alias rebootme='sudo reboot'  # Reboot system
alias update='sudo apt update && sudo apt upgrade -y'  # Update system
alias searchp='dpkg -l | grep'  # Search installed packages
alias python='python3'  # Ensure Python 3 runs by default


alias fuck='sudo $(history -p !!)'  # Correct previous command



