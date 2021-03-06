#!/bin/bash
# walk through downloaded samples and pull for latest changes
# Note: doesn't take care of possible conflicts
pushd ..
for dir in *; do
   for file in "$dir"; do
     pushd $file
     echo git pull --recurse-submodules for $file
     git pull --recurse-submodules
     popd
   done
done
popd
