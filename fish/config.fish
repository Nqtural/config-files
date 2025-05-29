# Greeting
set -U fish_greeting
# Editor
set -gx EDITOR /usr/bin/nvim
set -x PATH .local/bin/:$PATH
# Prompt Git functions
function check_untracked_files
    set -l untracked_files (git ls-files --others --exclude-standard)
    
    if test -n "$untracked_files"
        return 0
    else
        return 1
    end
end
function check_git_changes
    if test -n "$(git status --porcelain)"
        return 0
    else
        return 1
    end
end
# Prompt
set tty_device (tty)
if string match -q "/dev/tty*" $tty_device
    function fish_prompt
	fish_prompt_tty
    end
else
    function fish_prompt
	fish_prompt_normal
    end
end

function fish_prompt_tty
    set_color brblack
    printf "┌─ "
    set_color magenta
    printf (prompt_pwd --full-length-dirs 1)
    if test -d .git
        if check_untracked_files
            set git_color "red"
        else if check_git_changes
            set git_color "yellow"
        else
            set git_color "green"
        end
        set_color $git_color
        printf " %s" (git branch --show-current)
        set_color white
    end
    set_color brblack
    printf "\n└ "
    if fish_is_root_user
	set_color red
	printf "# "
    else
	set_color blue
    	printf "> "
    end
end

function fish_prompt_normal
    set_color brblack
    printf "╭─ "
    set_color magenta
    printf (prompt_pwd --full-length-dirs 1)
    if test -d .git
        if check_untracked_files
            set git_color "red"
        else if check_git_changes
            set git_color "yellow"
        else
            set git_color "green"
        end
        set_color $git_color
        printf " %s" (git branch --show-current)
    end
    set_color brblack
    printf "\n╰╴"
    if fish_is_root_user
	set_color red
	printf "# "
    else
	set_color blue
    	printf " "
    end
end
# Base XDG
set -x XDG_CACHE_HOME "$HOME/.cache"
set -x XDG_CONFIG_HOME "$HOME/.config"
set -x XDG_DATA_HOME "$HOME/.local/share"
# Cargo XDG
set -x CARGO_HOME "$XDG_DATA_HOME/cargo"

# Aliases
source /etc/fish/aliases.fish
