#!/bin/sh

mkdir -p bin
haxe test.hxml

libname='hxevents'
rm -f "${libname}.zip"
zip -r "${libname}.zip" src haxelib.json haxedoc.xml README.md
echo "Saved as ${libname}.zip"
