#!/usr/bin/bash
<<'EOF'
l=()
for x in "/home/marc/Imágenes/wallpapers/Jap/*; do
    if [[ $x =~ .*\.*$ ]] ; then
        l+=("$x")
    fi;
done;

if [[ "${#l[@]}" == "0" ]] ; then
    exit
fi

wall="${l[RANDOM%${#l[@]}]}"

feh --bg-fill "$wall"
EOF

feh --bg-fill --randomize /home/marc/Imágenes/wallpapers/Jap/*.*
