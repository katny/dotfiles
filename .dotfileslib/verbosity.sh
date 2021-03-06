#!/bin/bash

export DOTFILES_VERBOSE_DISABLED=0
export DOTFILES_VERBOSE_LOW=1
export DOTFILES_VERBOSE_HIGH=2
export DOTFILES_VERBOSE_DEFAULT=$DOTFILES_VERBOSE_LOW

verbose_policy()
{
    declare -A policy=(
        ["${DOTFILES_VERBOSE_DISABLED}:TARGET"]=0
        ["${DOTFILES_VERBOSE_DISABLED}:COMPONENT"]=1
        ["${DOTFILES_VERBOSE_DISABLED}:STEP"]=1
        ["${DOTFILES_VERBOSE_LOW}:TARGET"]=0
        ["${DOTFILES_VERBOSE_LOW}:COMPONENT"]=0
        ["${DOTFILES_VERBOSE_LOW}:STEP"]=1
        ["${DOTFILES_VERBOSE_HIGH}:TARGET"]=0
        ["${DOTFILES_VERBOSE_HIGH}:COMPONENT"]=0
        ["${DOTFILES_VERBOSE_HIGH}:STEP"]=0
    )

    return "${policy[${DOTFILES_VERBOSE_LEVEL}:$1]}"
}
