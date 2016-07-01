# Sookcula Theme v0.0.1
#
# based on:
# https://github.com/dracula/dracula-theme
#
# Copyright 2016, All rights reserved
#
# Code licensed under the MIT license
# http://zenorocha.mit-license.org
#
# @author Alvaro Pinot

local ret_status="%(?:%{$fg_bold[green]%}♻︎ :%{$fg_bold[red]%}♻︎ )"
local cursor="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ ) %{$reset_color%}"

PROMPT='${ret_status}%{$fg_bold[green]%}%p %{$fg_bold[green]%}%c $(git_prompt_info)% %{$reset_color%}
${cursor}%'

ZSH_THEME_GIT_PROMPT_CLEAN=") %{$fg_bold[green]%}✔ "
ZSH_THEME_GIT_PROMPT_DIRTY=") %{$fg_bold[yellow]%}✗ "
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
