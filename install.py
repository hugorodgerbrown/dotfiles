#!/usr/bin/env python
# -*- coding: utf-8 -*-
import subprocess
import os


DOTFILES_DIR = os.path.expanduser('~/dotfiles/')

SYMLINKS = (
    # Bash
    # ('.bashrc', '~/.bashrc'),
    ('.bash_profile', '~/.bash_profile'),
    ('.bash_aliases', '~/.bash_aliases'),
    ('.bash_prompt', '~/.bash_prompt'),
    ('.inputrc', '~/.inputrc'),
)


POST_COMMANDS = []


def underline(title):
    """ Underlines a string """
    return "{0}\n{1}\n".format(title, len(title) * '=')


def install_dotfiles():
    print(underline('Creating symlinks'))
    for orig_loc, symlink in SYMLINKS:
        symlink = os.path.expanduser(symlink)
        orig_loc = '{}{}'.format(DOTFILES_DIR, orig_loc)
        create_symlink(orig_loc, symlink)
        print ("")


def create_symlink(orig_loc, symlink):
    print('Symlink: {}'.format(symlink))
    if os.path.exists(symlink):
        print('✘ Failed: path exists.')
        return
    os.symlink(orig_loc, symlink)
    print ('✔ Created.')


def run_post_install_commands():
    print(underline('Running install commands'))
    for command in POST_COMMANDS:
        print('Running: {}'.format(command))
        subprocess.call(command, shell=True)
    return


if __name__ == "__main__":
    print('')
    install_dotfiles()
    run_post_install_commands()
    print('\nDone!')
