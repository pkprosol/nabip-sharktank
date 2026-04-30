#!/bin/bash
# Replace %%SPOTS_REMAINING%% placeholder with the ENV variable value
SPOTS="${SPOTS_REMAINING:-5}"
# Portable sed -i across BSD (macOS) and GNU (Linux/Render):
sed -i.bak "s/%%SPOTS_REMAINING%%/${SPOTS}/g" public/index.html && rm -f public/index.html.bak
