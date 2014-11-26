#!/bin/bash
#
# Opens sil in workspace $1, in a reasonable layout

cd $HOME/AUR/sil/src/Sil

[[ -n "$1" ]] && i3-msg "workspace $1"
i3-msg "append_layout $HOME/.i3/sil-workspace.json"
i3-msg "workspace 8"
i3-msg "append_layout $HOME/.i3/sil-dump.json"
./sil -mx11 -- -n8 &
i3-msg '[title="^Sil$"] focus'
