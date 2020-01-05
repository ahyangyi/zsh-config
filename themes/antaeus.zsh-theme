# Named after a desktop I have used a few years ago, this theme is a replica of
# simple Bash-like experience.

function antaeus_prompt_symbol() {
  local ref
  if [[ "$(git rev-parse --is-inside-work-tree 2>/dev/null)" ]]; then
    echo "♣"
  else
    echo "$"
  fi
}

PROMPT='%B%F{blue}%n@%m %F{green}%~ $(git_prompt_info)$(antaeus_prompt_symbol)%b%f '

ZSH_THEME_GIT_PROMPT_PREFIX="%F{magenta}"
ZSH_THEME_GIT_PROMPT_SUFFIX=" %F{green}"
ZSH_THEME_GIT_PROMPT_DIRTY="☼"
