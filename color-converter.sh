#!/bin/bash
#
# Script to convert Breeze Dark to Libadwaita Dark

sudo cp /usr/share/color-schemes/BreezeDark.colors ./
sudo chmod 777 BreezeDark.colors

OLD_ACCENT="61,174,233"           ; NEW_ACCENT="53,132,228"           # accent
OLD_ALT_ACCENT="30,87,116"        ; NEW_ALT_ACCENT="26,67,114"        # alt-accent
OLD_VIEW_BG="27,30,32"            ; NEW_VIEW_BG="30,30,30"            # view-bg
OLD_ALT_VIEW_BG="35,38,41"        ; NEW_ALT_VIEW_BG="39,39,39"        # alt-view-bg
OLD_WINDOW_BG="42,46,50"          ; NEW_WINDOW_BG="39,39,39"          # window-bg
OLD_ALT_WINDOW_BG="49,54,59"      ; NEW_ALT_WINDOW_BG="48,48,48"      # alt-window-bg
OLD_BUTTON_BG="49,54,59"          ; NEW_BUTTON_BG="48,48,48"          # button-bg
OLD_TOOLTIP_BG="49,54,59"         ; NEW_TOOLTIP_BG="15,15,15"         # tooltip-bg
OLD_ALT_TOOLTIP_BG="42,46,50"     ; NEW_ALT_TOOLTIP_BG="6,6,6"        # alt-tooltip-bg
OLD_HEADER_BG="49,54,59"          ; NEW_HEADER_BG="48,48,48"          # header-bg
OLD_ALT_HEADER_BG="42,46,50"      ; NEW_ALT_HEADER_BG="39,39,39"      # alt-header-bg
OLD_TEXT="252,252,252"            ; NEW_TEXT="255,255,255"            # text
OLD_INACTIVE_TEXT="161,169,177"   ; NEW_INACTIVE_TEXT="142,142,142"   # inactive-text
OLD_LINK_TEXT="29,153,243"        ; NEW_LINK_TEXT="129,208,255"       # link-text
OLD_VISITED_TEXT="155,89,182"     ; NEW_VISITED_TEXT="251,167,255"    # visited-text
OLD_NEGATIVE_TEXT="218,68,83"     ; NEW_NEGATIVE_TEXT="255,136,140"   # negative-text
OLD_NEUTRAL_TEXT="246,116,0"      ; NEW_NEUTRAL_TEXT="255,156,91"     # neutral-text
OLD_POSITIVE_TEXT="39,174,96"     ; NEW_POSITIVE_TEXT="141,230,152"   # positive-text
OLD_SEL_LINK_TEXT="253,188,75"    ; NEW_SEL_LINK_TEXT="255,192,87"    # selection-link-text
OLD_SEL_NEGATIVE_TEXT="176,55,69" ; NEW_SEL_NEGATIVE_TEXT="192,0,35"  # selection-negative-text
OLD_SEL_NEUTRAL_TEXT="198,92,0"   ; NEW_SEL_NEUTRAL_TEXT="182,34,0"   # selection-neutral-text
OLD_SEL_POSITIVE_TEXT="23,104,57" ; NEW_SEL_POSITIVE_TEXT="21,119,46" # selection-positive-text

# specify tooltip section because 
# the old value is the same as window section but
# the new value is different
sed -i \
  -e "/\[Colors:Tooltip\]/,/^$/ { 
    s/$OLD_TOOLTIP_BG/$NEW_TOOLTIP_BG/g; 
    s/$OLD_ALT_TOOLTIP_BG/$NEW_ALT_TOOLTIP_BG/g 
  }" \
  -e "s/$OLD_ACCENT/$NEW_ACCENT/g" \
  -e "s/$OLD_ALT_ACCENT/$NEW_ALT_ACCENT/g" \
  -e "s/$OLD_VIEW_BG/$NEW_VIEW_BG/g" \
  -e "s/$OLD_ALT_VIEW_BG/$NEW_ALT_VIEW_BG/g" \
  -e "s/$OLD_WINDOW_BG/$NEW_WINDOW_BG/g" \
  -e "s/$OLD_ALT_WINDOW_BG/$NEW_ALT_WINDOW_BG/g" \
  -e "s/$OLD_BUTTON_BG/$NEW_BUTTON_BG/g" \
  -e "s/$OLD_HEADER_BG/$NEW_HEADER_BG/g" \
  -e "s/$OLD_ALT_HEADER_BG/$NEW_ALT_HEADER_BG/g" \
  -e "s/$OLD_TEXT/$NEW_TEXT/g" \
  -e "s/$OLD_INACTIVE_TEXT/$NEW_INACTIVE_TEXT/g" \
  -e "s/$OLD_LINK_TEXT/$NEW_LINK_TEXT/g" \
  -e "s/$OLD_VISITED_TEXT/$NEW_VISITED_TEXT/g" \
  -e "s/$OLD_NEGATIVE_TEXT/$NEW_NEGATIVE_TEXT/g" \
  -e "s/$OLD_NEUTRAL_TEXT/$NEW_NEUTRAL_TEXT/g" \
  -e "s/$OLD_POSITIVE_TEXT/$NEW_POSITIVE_TEXT/g" \
  -e "s/$OLD_SEL_LINK_TEXT/$NEW_SEL_LINK_TEXT/g" \
  -e "s/$OLD_SEL_NEGATIVE_TEXT/$NEW_SEL_NEGATIVE_TEXT/g" \
  -e "s/$OLD_SEL_NEUTRAL_TEXT/$NEW_SEL_NEUTRAL_TEXT/g" \
  -e "s/$OLD_SEL_POSITIVE_TEXT/$NEW_SEL_POSITIVE_TEXT/g" \
  BreezeDark.colors

mv BreezeDark.colors BreezeLibadwaitaDark.colors
