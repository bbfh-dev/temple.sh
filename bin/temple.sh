#!/usr/bin/bash

dir=${XDG_TEMPLATES_DIR:-$HOME/xdg_templates}
name=$1

if [ -z "$name" ]; then
    echo "Available templates:"
    ls $dir
    exit 0
fi

if [ -f "$dir/$name" ]; then
    cp -L "$dir/$name" .
    exit 0
fi

cp -rLT "$dir/$name" .
