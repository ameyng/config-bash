###########
# .bashrc #
###########

# This file is sourced when "Bash" is run in interactive mode.
# i.e. when the standard input, output and error streams of "Bash" are connected to a TTY or a terminal emulator.
# Below are a few examples of when "Bash" is running in non-interactive mode.
# 1. When a "Bash" script is running.
# 2. When run with the "-c" flag (eg: bash -c "ls -Alh").
# In the two examples above, this file "$HOME/.bashrc" will not be sourced.

# Global Configuration #
########################

# Check if the file "/etc/bashrc" exists and is readable.
# This is the global configuration which is supplied by the OS vendor.
if [[ -f "/etc/bashrc" ]] && [[ -r "/etc/bashrc" ]]; then
  # Source the file.
  source "/etc/bashrc"
fi

# User Configuration #
######################

# Check if the directory "$HOME/.bashrc.d" exists and is readable.
if [[ -d "${HOME}/.bashrc.d" ]] && [[ -r "${HOME}/.bashrc.d" ]]; then
  # Iterate over the contents of this directory.
  for sEntry in "${HOME}/.bashrc.d/"*; do
    # Check if the entry is a file and not a directory.
    # This is because the Bash built-in "source" can only accept files as input, not directories.
    if [[ -f "${sEntry}" ]]; then
      # Check if the file is a "*.rc" file i.e. has the "rc" extension.
      # This is to enforce a standard configuration file extension.
      if [[ "${sEntry}" =~ ^.+\.rc$ ]]; then
        # Check if the file is readable.
        if [[ -r "${sEntry}" ]]; then
          # Source the file.
          source "${sEntry}"
        fi
      fi
    fi
  done
fi

# Release the "sEntry" variable used earlier.
unset sEntry
