#!/bin/sh

set -eux

git clone https://github.com/ValtoGameEngines/CryEngine

mv CryEngine waf2cmake

cd waf2cmake

git filter-repo --subdirectory-filter Tools/CMake/waf2cmake/ --prune-empty always --force

git gc
