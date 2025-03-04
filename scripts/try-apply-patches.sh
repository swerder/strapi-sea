#!/bin/bash
export LC_ALL=en_GB.UTF-8
for patch in patches/*.patch; do
    packageNameVer=$(echo $patch | sed 's/patches\///' | sed -E 's/\+([0-9.]+).patch$/@\1/' | tr '+' '/')
    name=${packageNameVer%@*}
    packageNameVer2=${packageNameVer#*@}
    version=${packageNameVer2#*@}
    currentVersion=$(npm list ${name} | grep ${name} | head -1 | grep -oE "@[0-9.]+" | sed 's/@//')
    echo "From filename ${packageNameVer} -> ${name} ${version} <-> current installed ${currentVersion}"
    if [ "${version}" != "${currentVersion}" ]; then
        if git apply --check "$patch" >/dev/null 2>&1; then
            echo "Applying patch: $patch"
            git apply "$patch"
        else
            echo "Warning: $patch cannot be applied cleanly apply with generating reject files:"
            git apply --reject "$patch" 2>&1 | grep "^error: "
            echo "also apply to original version under old_version_patch/node_modules"
            if [ ! -d "old_version_patch" ]; then
                mkdir -p old_version_patch
                cd old_version_patch
                npm init -y
                git init
            else
                cd old_version_patch
            fi
            npm pack "${packageNameVer}" > /dev/null 2>&1
            tar -xf *.tgz
            rm *.tgz
            #create subdirs if required
            mkdir -p "node_modules/${name}"
            rmdir "node_modules/${name}"
            mv package "node_modules/${name}"
            git apply "../$patch"
            cd ..
        fi
    fi
done
