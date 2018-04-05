#!/bin/bash -eu

find * -type d -print | xargs -I {} docker build -t contrast/installer-build:{} {}
