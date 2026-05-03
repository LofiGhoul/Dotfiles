#!/bin/bash
# Cava visualizer for waybar - outputs inline bar

cava -p ~/.config/waybar/cava-config | while read -r line; do
    # Convert cava's bar output to colored blocks
    echo "$line" | sed 's/█/<span color="#e8c97a">█<\/span>/g; s/▇/<span color="#f0dfc0">▇<\/span>/g; s/▆/<span color="#6fa8cc">▆<\/span>/g; s/▅/<span color="#4a7fa5">▅<\/span>/g; s/▄/<span color="#5a8a62">▄<\/span>/g; s/▃/<span color="#3d6645">▃<\/span>/g; s/▂/<span color="#2a4a30">▂<\/span>/g; s/▁/<span color="#8fb8ad">▁<\/span>/g'
done
