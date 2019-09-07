#!/bin/bash
killall -q conky
while pgrep -u $UID -x conky >/dev/null; do sleep 1; done
conky --daemonize --pause=3 --quiet -c ~/.config/conky/conkyAwesome.conf &&
conky --daemonize --pause=3 --quiet -c ~/.config/conky/conkyprotmonAwesome.conf &&
conky --daemonize --pause=3 --quiet -c ~/.config/conky/conkyshortkeyAwesome.conf &&
exit 0

