# Changelog

All notable changes to this project will be documented in this file.

## Important Definitions

> **x.y.z** - Version specified as _major.minor.patch_.
>
> **Unreleased** - Changes implemented in the _feature_ or _develop_ branches, but not merged into the _main_ branch.
>
> **YYYY-MM-DD** - Date representations like _2023-12-12_.
>
> **Added** - New features added.
>
> **Changed** - Changes in existing features/functionality.
>
> **Deprecated** - Soon-to-be removed features.
>
> **Removed** - Now removed features.
>
> **Fixed** - Bug fixes.
>
> **Security** - Fixes for security issues and open vulnerabilities.

## [Unreleased]

### Fixed

- Fixed the history not syncing across multiple sessions.

### Changed

- Tweaked the timestamps for the history entires a little.

- Better comments.

## [0.1.0] - 2023-12-20

### Added

- Setup base `.bashrc` and `.bash_profile`.

- `.bashrc` will source the OS vendor supplied `/etc/bashrc` if available.

- If installed, automatic `PATH` management and initialization for [pyenv] & [Homebrew].

- Automatic `PATH` management for user compiled binaries & scripts located at `~/bin` & `~/.local/bin`.

- Unlimited, timestamped, readable common history across all sessions, custom history file `~/.my_bash_history`, history verification.

- Change directory when entering just a path.

- More dynamic content resizing when changing size of terminal emulator.

<!-- Version annotations -->
[Unreleased]: https://github.com/ameyng/config-bash/compare/v0.1.0...HEAD
[0.1.0]: https://github.com/ameyng/config-bash/releases/tag/v0.1.0

<!-- General annotations -->
[Homebrew]: https://brew.sh "Homebrew"
[pyenv]: https://github.com/pyenv/pyenv "pyenv"
