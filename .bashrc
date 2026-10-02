# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# to replace the full directory path with just current folder name
#PS1='[\u@\h \W]\$ '
PS1="\[$(tput setaf 202)\]> \[$(tput setaf 33)\]\W \[$(tput setaf 220)\]\$\[$(tput sgr0)\] "
export PROMPT_DIRTRIM=1

alias open="xdg-open"

# Put your fun stuff here.

# alias to change directory
alias 1d='cd /home/raj/Documents/onedrive/AIIE/'
alias pp26='cd /home/raj/Documents/onedrive/AIIE/AU_FEST/Even_2026/semester_2/python_programming/'
alias cp25='cd /home/raj/Documents/onedrive/AIIE/AU_FEST/Odd_2025/semester_1/computer_programming/'
alias cp='cd /home/raj/Documents/onedrive/AIIE/AU_FEST/odd_2026/semester_1/computer_programming/'
alias eesps='cd /home/raj/Documents/onedrive/AIIE/AU_FEST/odd_2026/semester_3/eesps/'
alias pms='cd /home/raj/Documents/onedrive/AIIE/General/HR/PMS_2027/'
alias dload='cd /home/raj/Downloads'
alias paper='cd /home/raj/Documents/onedrive/AIIE/paper/economic_load_dispatch/'
alias kit='kitty --session /home/raj/.config/kitty/session.conf'
alias erp='cd /home/raj/Documents/onedrive/AIIE/General/ERP/'
alias diary='cd /home/raj/Documents/onedrive/AIIE/General/work_diary/'
alias icat='kitten icat'
alias tt='cd /home/raj/Documents/onedrive/AIIE/AU_FEST/odd_2026/timetable/'
alias org='cd /home/raj/Documents/onedrive/AIIE/org-files/2026/odd-2026/'

export oned="/home/raj/Documents/onedrive/AIIE"
export pp26='/home/raj/Documents/onedrive/AIIE/AU_FEST/Even_2026/semester_2/python_programming'
export cp25='/home/raj/Documents/onedrive/AIIE/AU_FEST/Odd_2025/semester_1/computer_programming'
export cp='/home/raj/Documents/onedrive/AIIE/AU_FEST/odd_2026/semester_1/computer_programming'
export eesps='/home/raj/Documents/onedrive/AIIE/AU_FEST/odd_2026/semester_3/eesps'
export pms='/home/raj/Documents/onedrive/AIIE/General/HR/PMS_2026'
export dload='/home/raj/Downloads'
export paper='/home/raj/Documents/onedrive/AIIE/paper/economic_load_dispatch'
export tag='kitty @ set-window-title '
export lib='libreoffice-bin '
export org='/home/raj/Documents/onedrive/AIIE/org-files/2026/odd-2026'

# alias for command
alias poff='sudo shutdown -h now'
alias 1d2g='rclone copy -Pu onedrive:AIIE /home/raj/Documents/onedrive/AIIE'
alias g21d='rclone copy -Pu /home/raj/Documents/onedrive/AIIE onedrive:AIIE'

#export GTK_IM_MODULE=ibus
#export QT_IM_MODULE=ibus
#export XMODIFIERS=@im=ibus
#export CLUTTER_IM_MODULE=ibus

#export GTK_IM_MODULE=fcitx
#export QT_IM_MODULE=fcitx
#export XMODIFIERS=@im=fcitx
#export CLUTTER_IM_MODULE=fcitx





