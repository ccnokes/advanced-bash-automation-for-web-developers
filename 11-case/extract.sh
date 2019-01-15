#!/bin/bash

case "$1" in
  *.tar|*.tgz) tar -xzvf "$1";;
  *.gz) gunzip -k "$1";;
  *.zip) unzip -v "$1";;
  *)
    echo "Cannot extract $1"
    exit 1
  ;;
esac
