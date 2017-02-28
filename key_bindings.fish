# fzf-autojump initialization hook

bind \eH '__fzf_autojump'
if bind -M insert >/dev/null ^/dev/null
  bind -M insert \eH '__fzf_autojump'
end
