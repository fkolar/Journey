#!/usr/bin/env bash

git clone https://bitbucket.org/chromiumembedded/java-cef.git jcef
cd jcef
git checkout d348788e3347fa4d2a421773463f7dd62da60991

mkdir jcef_build && cd jcef_build
cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release ..
make -j4

cd ../.. && ./gradlew patchJCEF