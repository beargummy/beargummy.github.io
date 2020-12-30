#!/bin/sh
cd /srv/hugo
echo " === generating pages ==="
rm -rf ./public/*
hugo --minify