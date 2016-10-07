# Restore old trash icons and folders colour to Paper-icon-theme

Around November 2015 my beloved [Paper icon theme](https://github.com/snwh/paper-icon-theme) changed the folders' colour from the classic brown to grey. A script to fix this was made available a couple of weeks later. Some time ago a change was made also to the trash icons.
This scripts collection aims to address these changed by reverting them to a previous state.

Usage
-----
```bash
git clone https://github.com/SimonItaly/Paper-convert

cd Paper-convert

./execute.sh
```

The script may take a couple of minutes to finish.
It needs to be repeated manually every time you update the icon theme (especially if you're using daily Ubuntu PPA updates) and requires super user permissions for editing _/usr/share/icons/Paper_.
Multiple executions of the script may alter the desired colour of the icons.

Preview
-------

_Before_

![Preview](http://bttfhvitalia.altervista.org/paper-icon-before.png)

_After_

![Preview](http://bttfhvitalia.altervista.org/paper-icon-after.png)

Tested with __Paper Icon Theme 1.3__ and __Gnome 3.14.1__

Credits
-------
The colour changer script is from [here (author: damo)](https://forums.bunsenlabs.org/viewtopic.php?id=1200)
The icons contained in _./scripts/Paper-trash-icons_ are from the old releases of [Paper Icon Theme](https://github.com/snwh/paper-icon-theme) from [Sam Hewitt](http://samuelhewitt.com/)
