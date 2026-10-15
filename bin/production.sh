K=/Applications/KiCad/KiCad.app/Contents/MacOS/kicad-cli
mkdir -p fab
$K pcb export gerbers -o fab/ --layers F.Cu,B.Cu,F.Mask,B.Mask,F.SilkS,B.SilkS,F.Paste,B.Paste,Edge.Cuts led-output-board.kicad_pcb
$K pcb export drill -o fab/ led-output-board.kicad_pcb
zip -j led-output-board-fab.zip fab/*
