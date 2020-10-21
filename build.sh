#!/usr/bin/env bash
wget https://files.stork-search.net/releases/latest/stork-ubuntu-latest
chmod +x stork-ubuntu-latest
ELEVENTY_ENV=production npx @11ty/eleventy --config=eleventy.js
./stork-ubuntu-latest --build _site/stork-posts.toml
