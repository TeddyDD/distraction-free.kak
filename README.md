# Distraction-free

[![IRC][IRC Badge]][IRC]

###### [Demo] | [Usage](#usage) | [Documentation](#commands) | [Contributing](CONTRIBUTING)

> Distraction-free extension for [Kakoune].

###### Features

- Turn light on current paragraph

## Installation

### [Pathogen]

``` kak
pathogen-infect /home/user/repositories/github.com/alexherbo2/distraction-free.kak
```

## Usage

``` kak
alias global df distraction-free-toggle
```

## Commands

- `distraction-free-enable`: Enable distraction-free mode
- `distraction-free-disable`: Disable distraction-free mode
- `distraction-free-toggle`: Toggle distraction-free mode

## Options

- `distraction_free_enabled` `bool`: Information about the way distraction-free mode is active (Read-only)

## Faces

- `DistractionFree` `comment`: Distraction-free face

[Kakoune]: https://kakoune.org
[IRC]: https://webchat.freenode.net?channels=kakoune
[IRC Badge]: https://img.shields.io/badge/IRC-%23kakoune-blue.svg
[Demo]: https://imgur.com/k76oMfu
[Pathogen]: https://github.com/alexherbo2/pathogen.kak
