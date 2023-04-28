################ Conda support ################
precmd_conda_info() {
  if [[ -n $CONDA_DEFAULT_ENV ]]; then
    CONDA_ENV=" %b§%B"$(basename "${CONDA_DEFAULT_ENV}")
  else
    CONDA_ENV=""
  fi
}

integral_conda_setup() {
  conda config --set changeps1 False
}

# Run the previously defined function before each prompt
precmd_functions+=( precmd_conda_info )

# Allow substitutions and expansions in the prompt
setopt prompt_subst

################ End of Conda support ################

integral_setup() {
  integral_conda_setup
}

PROMPT='⌠ %B%F{blue}%n%b@%B%m%b ⌂%B%~$(git_prompt_info)%F{blue}$CONDA_ENV%f%b
⌡ '

ZSH_THEME_GIT_PROMPT_PREFIX=" %bΓ%B"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%F{magenta}☼"
