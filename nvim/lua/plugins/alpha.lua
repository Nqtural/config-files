local random_messages = {
    "There is no place like ~",
    "Thou shalt not kill -9",
    "If at first you don't succeed; call it version 1.0",
    "The more I C, the less I see",
    "I’d love to change the world, but they won’t give me the source code",
    "Home is where the $HOME is",
    "I void warranties :)",
    "Less is more, more or less",
    "Lost in /var/log",
    "Arguments with me end up in /dev/null",
    "Feedback welcome; results may be sent to /dev/null",
    "If found, please return to /lost+found",
    "You’re my default gateway ^^",
    "Script happens",
    "Pipe dreams and shell scripts"
}

local function get_random_footer()
  math.randomseed(os.time())
  return random_messages[math.random(#random_messages)]
end

return {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local dashboard = require("alpha.themes.dashboard")
        dashboard.section.header.val = {
            "",
            "",
            "",
            "",
            "",
            "   /\\  /\\                                            /\\  /\\   ",
            "  /  \\/  \\                   ,@@,                   /  \\/  \\  ",
            " / /\\ \\/\\ \\               ,@@@@@@@@,               / /\\ \\/\\ \\ ",
            " \\ \\/\\ \\/ /            ,@@@@@@@@@@@@@@,            \\ \\/\\ \\/ / ",
            "  \\/ /\\/ /          ,@@@@@^  @@@@  ^@@@@@,          \\/ /\\/ /  ",
            "  / /\\/ /\\       ,@@@@@^     @@@@     ^@@@@@,       / /\\/ /\\  ",
            " / /\\  /\\ \\                  @@@@                  / /\\  /\\ \\ ",
            "/ /  \\/  \\ \\                 @@@@                 / /  \\/  \\ \\",
            "\\ \\  /\\  / /                 @@@@                 \\ \\  /\\  / /",
            " \\ \\/  \\/ /                  @@@@                  \\ \\/  \\/ / ",
            "  \\/ /\\/ /                   @@@@                   \\/ /\\/ /  ",
            "  / /\\/ /\\                   @@@@                   / /\\/ /\\  ",
            " / /\\ \\/\\ \\                  @@@@                  / /\\ \\/\\ \\ ",
            " \\ \\/\\ \\/ /                  @@@@                  \\ \\/\\ \\/ / ",
            "  \\  /\\  /                   @@@@                   \\  /\\  /  ",
            "   \\/  \\/                                            \\/  \\/   "
        }
        dashboard.section.buttons.val = {
            dashboard.button("n", "  New file", ":ene<CR>"),
            dashboard.button("e", "  Explorer", ":Neotree reveal<CR>"),
            dashboard.button("q", "  Quit NVIM", ":qa<CR>")
        }
        dashboard.section.footer.val = {"", "", get_random_footer()},
        require("alpha").setup(dashboard.config)
    end
}
