#!/bin/sh
# @file conky-i3bar.sh
# @brief Wrapper around conky for my i3bar.  Pretty much jacked from i3wm.org
# @author Oscar Bezi, oscar@bezi.io
# @since 8 Mar 2015
#===============================================================================

echo '{"version": 1}'
echo '['
echo '[],'
exec conky -c ~/.config/conkyrc
