#!/bin/bash

mkdir -p bin
haxe test.hxml

cp -R src/* bin/

cd bin
zip -r release.zip haxelib.json hxevents haxedoc.xml
cd ..

echo "Packaged in bin/release.zip"
