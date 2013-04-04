if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
### Added by the Heroku Toolbelt
export PATH="/Applications/XAMPP/xamppfiles/bin:/usr/local/heroku/bin:$PATH"



### set window name for optimal layout
case $TERM in
	xterm*)
		PS1="\[\033]0;\w\007\]bash\$ "
		;;
	*)
		PS1="bash\$ "
		;;
esac
					


