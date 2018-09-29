function __fzf_autojump
  set -q FZF_AUTOJUMP_COMMAND
  or set -l FZF_AUTOJUMP_COMMAND "autojump-list-dirs"
  set -q FZF_TMUX_HEIGHT; or set FZF_TMUX_HEIGHT 40%
  # Fish hangs if the command before pipe redirects (2> /dev/null)
  set -l FZF_RESULT (eval $FZF_AUTOJUMP_COMMAND | eval (__fzfcmd) +m $FZF_AUTOJUMP_OPTS)
  if [ -n "$FZF_RESULT" ]
    cd $FZF_RESULT
  end
  commandline -f repaint
end
