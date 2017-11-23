#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

setleds -D +num

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi

#FISH_BIN="/usr/bin/fish"

# The replacement is only done in non-fish login interactive shell
# SSH connection and fish executable exists.

#if [ "$SHELL" != "$FISH_BIN" -a -x "$FISH_BIN" ] ; then
	# we first check whether fish can be executed, otherwise the
	# replacement will cause immediate crash at login (that's bad)
#	if "$FISH_BIN" -c 'echo "Test fish running" > /dev/null' ; then
#		export SHELL="$FISH_BIN"
#		exec -l $SHELL -l
#	else
#		echo "Failed to launch fish shell. RTFM."
#		echo "Fall back to default shell $SHELL ..."
#	fi
#fi
