#!/bin/bash
docker build -t meditor-builder .
s2i build --incremental=true --rm --ref=master https://github.com/moravianlibrary/MEditor.git meditor-builder moravianlibrary/meditor_s2i
