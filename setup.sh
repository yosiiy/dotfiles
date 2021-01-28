#!/bin/bash -x

IGNORE_FILES="^\.(git|travis)"

echo "Create dotfile links."

# ~/.files
for dotfile in .??*; do
    [[ ${dotfile} =~ ${IGNORE_FILES} ]] && continue
    ln -snfv "$(pwd)/${dotfile}" "${HOME}/${dotfile}"
done

# neovim
CONFIG_DIR="${HOME}/.config"
NVIM_CONFIG_DIR="${CONFIG_DIR}/nvim"
[ ! -d "${NVIM_CONFIG_DIR}" ] && mkdir -p "${NVIM_CONFIG_DIR}"
ln -snfv "$(pwd)/nvim/init.vim" "${NVIM_CONFIG_DIR}/init.vim"

echo "Success"
