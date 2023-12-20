<!-- HTML Formatted Title -->
<h1 align="center">My <a href="https://www.gnu.org/software/bash">Bash</a> Configuration</h1>

<!-- HTML Formatted Changelog & License Links -->
<h3 align="center">
  [<a href="CHANGELOG.md">Changelog</a>] | [<a href="LICENSE">License</a>] | [<a href="APPENDIX.md">Appendix</a>]
</h3>

Sensible, sane configuration options for [Bash].

## Features

### Quality Assurance

- Optimized and error checked using [ShellCheck].

- Formatted using [shfmt].

### General Improvements

- The interactive shell configuration file `~/.bashrc` will also source the global cofiguration at `/etc/bashrc`.

- The login shell configuration file `~/.bash_profile` will also source the interactive shell configuration file `~/.bashrc`.

- If installed, automatic `PATH` management & initialization for -

  - [pyenv]

  - [Homebrew]

- Automatic `PATH` management for user compiled binaries & scripts located at `~/bin` & `~/.local/bin`.

- Enabled changing directories when entering just a path i.e. executing `$ /path/to/some/directory` is equivalent to `$ cd /path/to/some/directory`.

- Dynamic resizing of content within the window when the terminal emulator is resized.

### History Improvements

- Unlimited history.

- Immediately save commands to history upon execution. This ensures that when running multiple [Bash] sessions (eg: using [tmux], etc.), all commands from all sessions are written to the history.

- Write history to a custom file `~/.my_bash_history` for better retention.

- Improve readability by combining multi-line commands into a single command when writing to history.

- Entries in history will be timestamped in this format - `894  [Wed-20-Dec-2023-04-12-21-AM-+0530] ==> ls -Alh`.

## Requirements

The following requirements must be met in order to use this configuration.

### Supported Operating Systems

The supported operating systems and the location of the respective configurations are shown below.

|    **OS**   	|             **Configuration Path(s)**             	|
|:-----------:	|:-------------------------------------------------:	|
| [GNU/Linux] 	| `~/.bashrc`<br>`~/.bash_profile`<br>`~/.bashrc.d` 	|
|   [MacOS]   	| `~/.bashrc`<br>`~/.bash_profile`<br>`~/.bashrc.d` 	|
|    [BSDs]   	| `~/.bashrc`<br>`~/.bash_profile`<br>`~/.bashrc.d` 	|

### Required Programs/Packages

The following packages are required in order to use this configuration.

| **Dependency** 	|          **Type**         	| **Version** 	|
|:--------------:	|:-------------------------:	|:-----------:	|
|   [GNU Bash]   	|         Mandatory         	| 4.x & Above 	|
|      [Git]     	|         Mandatory         	|     Any     	|
|   [GNU Stow]   	| Optional<br>(Recommended) 	|     Any     	|

### Other Requirements

The following additional requirements must be met in otder to use this configuration.

- None.

## Instructions

### Installation (GNU/Linux, MacOS & BSD Operating Systems)

1. Create a new backup directory.

  - `$ mkdir "${HOME}"/.bash_backup`.

2. Backup existing configuration files (see [supported operating systems](#supported-operating-systems)) to the backup directory.

  - `$ mv "${HOME}/.bash_profile" "${HOME}"/.bash_backup/.bash_profile-"$(date +%a-%d-%b-%Y-%I-%M-%S-%p-%z)".backup`.

  - `$ mv "${HOME}/.bashrc" "${HOME}"/.bash_backup/.bashrc-"$(date +%a-%d-%b-%Y-%I-%M-%S-%p-%z)".backup`.

  - `$ mv "${HOME}/.bashrc.d" "${HOME}"/.bash_backup/.bashrc.d-"$(date +%a-%d-%b-%Y-%I-%M-%S-%p-%z)".backup`.

3. Clone this repository into your home directory.

  - `$ cd "${HOME}"`.

  - `$ git clone https://github.com/ameyng/config-bash`.

4. Navigate to the cloned repository.

  - `$ cd config-bash`.

5. Installation can be done using [GNU Stow] or `ln`.

  - Using [GNU Stow]

    - `$ stow bash -t "${HOME}"`.

  - Using `ln`

    - `$ cd bash`.

    - `$ ln -sf "$(pwd)"/.bashrc "${HOME}"/.bashrc`.

    - `$ ln -sf "$(pwd)"/.bash_profile "${HOME}"/.bash_profile`.

    - `$ ln -sf "$(pwd)"/.bashrc.d "${HOME}"/.bashrc.d`.

6. Verify the operation by executing `$ ls -Alh ~/`. You will see entries for `.bashrc`, `.bash_profile` & `.bashrc.d` with arrows pointing to the actual files i.e. to the files within this cloned repository.

7. Close and reopen your terminal emulator program or open a new session of [Bash].

### Update (GNU/Linux, MacOS & BSD Operating Systems)

1. Backup existing configuration files (see [supported operating systems](#supported-operating-systems)) to the backup directory.

  - `$ mv "${HOME}/.bash_profile" "${HOME}"/.bash_backup/.bash_profile-"$(date +%a-%d-%b-%Y-%I-%M-%S-%p-%z)".backup`.

  - `$ mv "${HOME}/.bashrc" "${HOME}"/.bash_backup/.bashrc-"$(date +%a-%d-%b-%Y-%I-%M-%S-%p-%z)".backup`.

  - `$ mv "${HOME}/.bashrc.d" "${HOME}"/.bash_backup/.bashrc.d-"$(date +%a-%d-%b-%Y-%I-%M-%S-%p-%z)".backup`.

2. Update the cloned repository.

  - `$ cd "${HOME}"`.

  - `$ cd config-bash`.

  - `$ git pull --all`.

3. The configuration can be updated using [GNU Stow] or `ln`.

  - Using [GNU Stow]

    - `$ stow bash -t "${HOME}"`.

  - Using `ln`

    - `$ cd bash`.

    - `$ ln -sf "$(pwd)"/.bashrc "${HOME}"/.bashrc`.

    - `$ ln -sf "$(pwd)"/.bash_profile "${HOME}"/.bash_profile`.

    - `$ ln -sf "$(pwd)"/.bashrc.d "${HOME}"/.bashrc.d`.

4. Verify the operation by executing `$ ls -Alh ~/`. You will see entries for `.bashrc`, `.bash_profile` & `.bashrc.d` with arrows pointing to the actual files i.e. to the files within this cloned repository.

5. Close and reopen your terminal emulator program or open a new session of [Bash].

<!-- Annotations -->
<!-- The below mentioned ID-style links are used throughout the above document -->
<!-- These appear only in the markdown source code and are invisible in the rendered document -->

[Bash]: https://www.gnu.org/software/bash "Bash"
[ShellCheck]: https://github.com/koalaman/shellcheck "ShellCheck" 
[shfmt]: https://github.com/mvdan/sh "shfmt"
[pyenv]: https://github.com/pyenv/pyenv "pyenv"
[Homebrew]: https://brew.sh "Homebrew"
[tmux]: https://github.com/tmux/tmux "tmux"
[GNU/Linux]: https://en.wikipedia.org/wiki/Linux "GNU/Linux"
[MacOS]: https://en.wikipedia.org/wiki/MacOS "MacOS"
[BSDs]: https://en.wikipedia.org/wiki/List_of_BSD_operating_systems "List Of BSD Operating Systems"
[Git]: https://git-scm.com "Git SCM"
[GNU Stow]: https://www.gnu.org/software/stow "GNU Stow"

