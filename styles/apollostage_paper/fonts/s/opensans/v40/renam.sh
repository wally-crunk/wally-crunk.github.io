#!/bin/bash

# Mapping of current filenames to new filenames
declare -A files=(
  ["s/jetbrainsmono/v18/tDba2o-flEEny0FZhsfKu5WU4xD-IQ-PuZJJXxfpAO-Lf1OQ.ttf"]="JetBrains_Mono-100-Italic.ttf"
  ["s/jetbrainsmono/v18/tDba2o-flEEny0FZhsfKu5WU4xD-IQ-PuZJJXxfpAO8LflOQ.ttf"]="JetBrains_Mono-200-Italic.ttf"
  ["s/jetbrainsmono/v18/tDba2o-flEEny0FZhsfKu5WU4xD-IQ-PuZJJXxfpAO_VflOQ.ttf"]="JetBrains_Mono-300-Italic.ttf"
  ["s/jetbrainsmono/v18/tDba2o-flEEny0FZhsfKu5WU4xD-IQ-PuZJJXxfpAO-LflOQ.ttf"]="JetBrains_Mono-400-Italic.ttf"
  ["s/jetbrainsmono/v18/tDba2o-flEEny0FZhsfKu5WU4xD-IQ-PuZJJXxfpAO-5flOQ.ttf"]="JetBrains_Mono-500-Italic.ttf"
  ["s/jetbrainsmono/v18/tDba2o-flEEny0FZhsfKu5WU4xD-IQ-PuZJJXxfpAO9VeVOQ.ttf"]="JetBrains_Mono-600-Italic.ttf"
  ["s/jetbrainsmono/v18/tDba2o-flEEny0FZhsfKu5WU4xD-IQ-PuZJJXxfpAO9seVOQ.ttf"]="JetBrains_Mono-700-Italic.ttf"
  ["s/jetbrainsmono/v18/tDba2o-flEEny0FZhsfKu5WU4xD-IQ-PuZJJXxfpAO8LeVOQ.ttf"]="JetBrains_Mono-800-Italic.ttf"
  ["s/jetbrainsmono/v18/tDbY2o-flEEny0FZhsfKu5WU4zr3E_BX0PnT8RD8yK1jPQ.ttf"]="JetBrains_Mono-100-Normal.ttf"
  ["s/jetbrainsmono/v18/tDbY2o-flEEny0FZhsfKu5WU4zr3E_BX0PnT8RD8SKxjPQ.ttf"]="JetBrains_Mono-200-Normal.ttf"
  ["s/jetbrainsmono/v18/tDbY2o-flEEny0FZhsfKu5WU4zr3E_BX0PnT8RD8lqxjPQ.ttf"]="JetBrains_Mono-300-Normal.ttf"
  ["s/jetbrainsmono/v18/tDbY2o-flEEny0FZhsfKu5WU4zr3E_BX0PnT8RD8yKxjPQ.ttf"]="JetBrains_Mono-400-Normal.ttf"
  ["s/jetbrainsmono/v18/tDbY2o-flEEny0FZhsfKu5WU4zr3E_BX0PnT8RD8-qxjPQ.ttf"]="JetBrains_Mono-500-Normal.ttf"
  ["s/jetbrainsmono/v18/tDbY2o-flEEny0FZhsfKu5WU4zr3E_BX0PnT8RD8FqtjPQ.ttf"]="JetBrains_Mono-600-Normal.ttf"
  ["s/jetbrainsmono/v18/tDbY2o-flEEny0FZhsfKu5WU4zr3E_BX0PnT8RD8L6tjPQ.ttf"]="JetBrains_Mono-700-Normal.ttf"
  ["s/jetbrainsmono/v18/tDbY2o-flEEny0FZhsfKu5WU4zr3E_BX0PnT8RD8SKtjPQ.ttf"]="JetBrains_Mono-800-Normal.ttf"
  ["s/merriweather/v30/u-4l0qyriQwlOrhSvowK_l5-eR7lXcf_.ttf"]="Merriweather-300-Italic.ttf"
  ["s/merriweather/v30/u-4m0qyriQwlOrhSvowK_l5-eSZJ.ttf"]="Merriweather-400-Italic.ttf"
  ["s/merriweather/v30/u-4l0qyriQwlOrhSvowK_l5-eR71Wsf_.ttf"]="Merriweather-700-Italic.ttf"
  ["s/merriweather/v30/u-4l0qyriQwlOrhSvowK_l5-eR7NWMf_.ttf"]="Merriweather-900-Italic.ttf"
  ["s/merriweather/v30/u-4n0qyriQwlOrhSvowK_l521wRpXw.ttf"]="Merriweather-300-Normal.ttf"
  ["s/merriweather/v30/u-440qyriQwlOrhSvowK_l5Oew.ttf"]="Merriweather-400-Normal.ttf"
  ["s/merriweather/v30/u-4n0qyriQwlOrhSvowK_l52xwNpXw.ttf"]="Merriweather-700-Normal.ttf"
  ["s/merriweather/v30/u-4n0qyriQwlOrhSvowK_l52_wFpXw.ttf"]="Merriweather-900-Normal.ttf"
  ["s/merriweathersans/v26/2-cM9IRs1JiJN1FRAMjTN5zd9vgsFHXwWDvLBsPDdpWMaq2TzesC.ttf"]="Merriweather_Sans-300-Italic.ttf"
  ["s/merriweathersans/v26/2-cM9IRs1JiJN1FRAMjTN5zd9vgsFHXwWDvLBsPDdpWMaq3NzesC.ttf"]="Merriweather_Sans-400-Italic.ttf"
  ["s/merriweathersans/v26/2-cM9IRs1JiJN1FRAMjTN5zd9vgsFHXwWDvLBsPDdpWMaq3_zesC.ttf"]="Merriweather_Sans-500-Italic.ttf"
  ["s/merriweathersans/v26/2-cM9IRs1JiJN1FRAMjTN5zd9vgsFHXwWDvLBsPDdpWMaq0TyusC.ttf"]="Merriweather_Sans-600-Italic.ttf"
  ["s/merriweathersans/v26/2-cM9IRs1JiJN1FRAMjTN5zd9vgsFHXwWDvLBsPDdpWMaq0qyusC.ttf"]="Merriweather_Sans-700-Italic.ttf"
  ["s/merriweathersans/v26/2-cM9IRs1JiJN1FRAMjTN5zd9vgsFHXwWDvLBsPDdpWMaq1NyusC.ttf"]="Merriweather_Sans-800-Italic.ttf"
  ["s/merriweathersans/v26/2-cO9IRs1JiJN1FRAMjTN5zd9vgsFF_5asQTb6hZ2JKZ_O4ljg.ttf"]="Merriweather_Sans-300-Normal.ttf"
  ["s/merriweathersans/v26/2-cO9IRs1JiJN1FRAMjTN5zd9vgsFF_5asQTb6hZ2JKZou4ljg.ttf"]="Merriweather_Sans-400-Normal.ttf"
  ["s/merriweathersans/v26/2-cO9IRs1JiJN1FRAMjTN5zd9vgsFF_5asQTb6hZ2JKZkO4ljg.ttf"]="Merriweather_Sans-500-Normal.ttf"
  ["s/merriweathersans/v26/2-cO9IRs1JiJN1FRAMjTN5zd9vgsFF_5asQTb6hZ2JKZfOkljg.ttf"]="Merriweather_Sans-600-Normal.ttf"
  ["s/merriweathersans/v26/2-cO9IRs1JiJN1FRAMjTN5zd9vgsFF_5asQTb6hZ2JKZRekljg.ttf"]="Merriweather_Sans-700-Normal.ttf"
  ["s/merriweathersans/v26/2-cO9IRs1JiJN1FRAMjTN5zd9vgsFF_5asQTb6hZ2JKZ_S4ljg.ttf"]="Merriweather_Sans-800-Normal.ttf"
)

# Iterate over the files array
for old_path in "${!files[@]}"; do
  new_name="${files[$old_path]}"
  # Rename the file
  mv "$old_path" "$new_name"
done
