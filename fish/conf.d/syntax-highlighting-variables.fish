# Normal {{{

# Default color
set fish_color_normal white
# Commands like echo
set fish_color_command brcyan
# Keywords like if - this falls back on the command color if unset
set fish_color_keyword brblue
# Quoted text like "abc"
set fish_color_quote green
# IO redirections like >/dev/null
set fish_color_redirection yellow
# Process separators like ; and &
set fish_color_end magenta
# Syntax errors
set fish_color_error red --bold
# Ordinary command parameters
set fish_color_param cyan
# Parameters that are filenames (if the file exists)
set fish_color_valid_path cyan
# Options starting with “-”, up to the first “--” parameter
set fish_color_option cyan
# Comments like ‘# important’
set fish_color_comment green
# Selected text in vi visual mode
set fish_color_selection black --background=white
# Parameter expansion operators like * and ~
set fish_color_operator magenta
# Character escapes like \n and \x70
set fish_color_escape yellow
# Autosuggestions (the proposed rest of a command)
set fish_color_autosuggestion brblack
# The current working directory in the default prompt
set fish_color_cwd green
# The current working directory in the default prompt for the root user
set fish_color_cwd_root green
# The username in the default prompt
set fish_color_user blue
# The hostname in the default prompt
set fish_color_host blue
# The hostname in the default prompt for remote sessions (like ssh)
set fish_color_host_remote magenta
# The last command’s nonzero exit code in the default prompt
set fish_color_status red
# The ‘^C’ indicator on a canceled command
set fish_color_cancel red
# History search matches and selected pager items (background only)
set fish_color_search_match yellow
# The current position in the history for commands like dirh and cdh
set fish_color_history_current brwhite

# }}}

# Pager {{{

# The progress bar at the bottom left corner
set fish_pager_color_progress white
# The background color of a line
set fish_pager_color_background --background=normal
# The prefix string, i.e. the string that is to be completed
set fish_pager_color_prefix white
# The completion itself, i.e. the proposed rest of the string
set fish_pager_color_completion white
# The completion description
set fish_pager_color_description white
# Background of the selected completion
set fish_pager_color_selected_background --background=normal
# Prefix of the selected completion
set fish_pager_color_selected_prefix cyan
# Suffix of the selected completion
set fish_pager_color_selected_completion brcyan --bold
# Description of the selected completion
set fish_pager_color_selected_description white
# Background of every second unselected completion
set fish_pager_color_secondary_background --background=normal
# Prefix of every second unselected completion
set fish_pager_color_secondary_prefix white
# Suffix of every second unselected completion
set fish_pager_color_secondary_completion white
# Description of every second unselected completion
set fish_pager_color_secondary_description white

# }}}
