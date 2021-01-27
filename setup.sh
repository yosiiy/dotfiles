#!/bin/bash -e

IGNORE_FILES="^\.(git|travis)"

echo "Create dotfile links."

for dotfile in .??*; do
    [[ ${dotfile} =~ ${IGNORE_FILES} ]] && continue
    ln -snfv "$(pwd)/${dotfile}" "${HOME}/${dotfile}"
done

echo "Success"
