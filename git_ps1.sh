#!/usr/bin/env bash

# based on https://github.com/jbalogh/dotfiles/blob/master/.zsh/git-ps1, many thanks to Jeff Balogh - me@jeffbalogh.org!
# migrated from zsh to bash and adjusted to my needs

# git_ps1.sh accepts 0 or 1 arguments (i.e., format string)

function __git_ps1() {
    local color_off="\033[0m"
    local red_intense="\033[0;91m"

    local dot_git_folder="$(git rev-parse --git-dir 2>/dev/null)"

    if [ -n "$dot_git_folder" ]; then
        local msg=""
        if [ -d "$dot_git_folder/rebase-apply" ]; then
            if [ -f "$dot_git_folder/rebase-apply/rebasing" ]; then
                msg="REBASE"
            elif [ -f "$dot_git_folder/rebase-apply/applying" ]; then
                msg="AM"
            else
                msg="AM/REBASE"
            fi
        elif [ -f "$dot_git_folder/rebase-merge/interactive" ]; then
            msg="REBASE-i"
        elif [ -d "$dot_git_folder/rebase-merge" ]; then
            msg="REBASE-m"
        elif [ -f "$dot_git_folder/MERGE_HEAD" ]; then
            msg="MERGING"
        else
            if [ -f "$dot_git_folder/BISECT_LOG" ]; then
                msg="BISECTING"
            fi
        fi

        if [ ! -z "${msg}" ]; then
            printf "[${red_intense}${msg}${color_off}]"
        fi
    fi
}

export -f __git_ps1
