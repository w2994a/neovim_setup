local settings = {
    -- every line should be same width without escaped \
    header = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Header",
        margin = 5,
        content = {
        "          ⣀⣤⠶⣛⣛⣽⣽⣻⣛⡳⠶⣤⡀          ",       
        "       ⣠⠶⣭⣶⣿⣿⠿⠟⠛⠛⠛⠿⢿⣿⣿⣮⣛⣦⡀       ",       
        "     ⣠⢟⣶⣿⠟⠉  ⢀⣤⣴⣦⣤⣀⡀ ⠈⠛⢿⣿⣭⢦⡀     ",       
        "    ⡾⣵⣿⠟    ⣴⣿⣿⣿⣿⣿⣿⣿⡀   ⠉⢿⣿⡙⣄⡀   ",       
        "  ⢀⡟⣾⡿⠁     ⣿⣿⣿⣿⣿⣿⣿⣿⡇     ⠹⣿⣎⣆⡀  ",       
        "  ⡟⣿⡿⣶⠿⠻⢿⣷⡄ ⣿⣿⣿⣿⣿⣿⣿⣿⠇ ⣴⣿⠿⠛⢿⡝⣿⣎⡆⡀ ",        
        " ⣸⣸⣿⣸⡅   ⢻⣿⡀⣸⠁⠈⣻⣿⡋⡀⣻⡀⢼⣿    ⣿⢹⣿⢹⡀ ",       
        " ⡏⣿⡏⣿⣿⣄⣀⠆⠈⣿⡗⢿⣿⣿⣟⡈⣿⣿⣿⠁⣿⣿ ⢆⣀⣤⣿⡇⣿⣇⡇⡀",       
        "⢀⢳⣿  ⣩⣭⣤⣄⣀⡙⠿⣿⣧⠿⣿⣿⣿⢇⣿⣿⠟⣀⣀⣤⣬⣭⣁⡀⣿⣿⣿⡀",       
        "⠨⢸⣿ ⣿⣿⡿⠟⠛⢿⣿⣿⣷⣴⣿⡷⠰⣿⣷⣤⣷⣿⣿⠿⠛⠿⣿⣿⡆⢽⣿⣿⡀",       
        " ⡝⣿⡄⣿⡏     ⠉⠛⢋⣠⣿⢸⣧⣨⠛⠋⠁⢀   ⠈⣿⡇⣿⣿⣿ ",       
        " ⣧⣿⣧⣿⡁    ⡇⣴⣿⣿⣿⠟⠈⢿⣿⣿⣷⡄⣏⡀   ⣿⠇⣿⡇⡇ ",       
        " ⠸⡸⣿⡸⣿⣦⣠⣀⣾⣼⡟   ⡀ ⣀  ⠙⣿⡹⣶⣠⣀⣶⡿⣼⣿⣼⡀ ",       
        "  ⢷⢿⣿⡘⣿⣿⣿⢱⣿    ⣿⢸⠅   ⢘⣿⢻⣿⣿⡟⣴⣿⢣⠃  ",       
        "   ⢷⢻⣿⣄  ⠻⣿⣀⡀  ⣿⢸⣇  ⢀⣾⣿   ⣼⣿⣣⠋   ",       
        "    ⠻⡝⣿⣷⡀ ⠉⢿⣿⣿⣿⡿⠈⣿⣿⣿⣿⠟  ⣠⣿⡿⣵⠁    ",       
        "     ⠈⢷⣛⣿⣷⣤⣀⠉⠉    ⠉⠋ ⣠⣶⣿⡿⣥⠋      ",       
        "       ⠈⠻⣭⡻⢿⣿⣿⣶⣶⣶⣶⣿⣿⣿⠿⣫⠶⠋        ",       
        "           ⠙⠛⠶⠾⡭⢭⡽⠶⠞⠛⠉           ",       
        },
        highlight = "Statement",
        default_color = "#F1948A",
        oldfiles_amount = 0,
    },
    -- name which will be displayed and command
    body = {
        type = "mapping",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Commands",
        margin = 5,
        content = {
            { "  Find File", "Telescope find_files", "ff" },
            { "  Find Word", "Telescope live_grep", "lg" },
            { "  Recent Files", "Telescope oldfiles", "of" },
            { "  File Browser", ":NvimTreeToggle", "fb" },
            { "  Colorschemes", "Telescope colorscheme", "cs" },
            { "  New File", "lua require'startup'.new_file()", "nf" },
	    { "  Setting", ":e ~/.config/nvim/init.lua", "s" },
	    { "󰿅  Quit", ":q", "q" },
        },
        highlight = "string",
        default_color = "#5DADE2",
        oldfiles_amount = 0,
    },

    footer = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Footer",
        margin = 5,
        content = { "« cut off one head, two more will take its place »" },
        highlight = "Number",
        default_color = "",
        oldfiles_amount = 0,
    },

    clock = {
        type = "text",
        content = function()
            local clock = " " .. os.date("%H:%M")
            local date = " " .. os.date("%d-%m-%y")
            return { clock, date }
        end,
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "",
        margin = 5,
        highlight = "TSString",
        default_color = "#F7DC6F",
        oldfiles_amount = 10,
    },

    options = {
        mapping_keys = true,
        cursor_column = 0.5,
        empty_lines_between_mappings = true,
        disable_statuslines = true,
        paddings = { 1, 3, 3, 0 },
    },

    mappings = {
        execute_command = "<CR>",
        open_file = "o",
        open_file_split = "<c-o>",
        open_section = "<TAB>",
        open_help = "?",
    },

    colors = {
        background = "#1f2227",
        folded_section = "#56b6c2",
    },

    parts = { "header", "body", "clock", "footer" },
}
return settings
