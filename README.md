[![IRC][IRC Badge]][IRC]

Distraction-free extension for [Kakoune][].

Turn light on current paragraph.

[![][Demo]][Demo Page]

Installation
------------

``` sh
ln --symbolic $PWD/rc $XDG_CONFIG_HOME/kak/autoload/distraction-free
```

Usage
-----

``` kak
alias global df distraction-free-toggle
```

Commands
--------

- `distraction-free-enable`: Enable distraction-free mode
- `distraction-free-disable`: Disable distraction-free mode
- `distraction-free-toggle`: Toggle distraction-free mode

Options
-------

- `distraction_free_enabled` `bool`: Information about the way distraction-free mode is active (Read-only)

Faces
-----

- `DistractionFree` `comment`: Distraction-free face

[Kakoune]: http://kakoune.org
[IRC]: https://webchat.freenode.net?channels=kakoune
[IRC Badge]: https://img.shields.io/badge/IRC-%23kakoune-blue.svg
[Demo Page]: https://imgur.com/k76oMfu
[Demo]: https://i.imgur.com/k76oMfu.gif
