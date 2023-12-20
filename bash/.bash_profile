#################
# .bash_profile #
#################

# This file is sourced when "Bash" is run as a login shell.
# i.e. when run in a TTY, an SSH daemon or when called with the "--login/-l" flags.

# Apply User Configuration #
############################

# When run as a login shell, "Bash" does not source the "$HOME/.bashrc" file.
# This can cause inconsistency in its behaviour.
# In order to avoid this, the "$HOME/.bashrc" file is being sourced within this "$HOME/.bash_profile" file.

# Check if the '$HOME/.bashrc' file exists and is readable.
if [[ -f "${HOME}/.bashrc" ]] && [[ -r "${HOME}/.bashrc" ]]; then
  # Source the file.
  source "${HOME}/.bashrc"
fi
