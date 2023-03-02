------ lualine configuration file ------

-- set colors for custom theme of lualine.
local colors = {
  black = '#17202A',
  white = '#F0F3F4',
  gray = '#515A5A',
  lightgray = '#424949',
  red = '#F1948A',
  yellow = '#F7DC6F',
  cyan = '#A2D9CE',
  blue = '#5DADE2',
  green = '#52BE80',
  purple = '#C39BD3'
}

-- 
local custom = {
  normal = {
    a = {bg = colors.blue, fg = colors.black, gui = 'bold'},
    b = {bg = colors.lightgray, fg = colors.blue},
    c = {bg = colors.gray, fg = colors.white}
  },
  insert = {
    a = {bg = colors.green, fg = colors.black, gui = 'bold'},
    b = {bg = colors.lightgray, fg = colors.green},
    c = {bg = colors.gray, fg = colors.white}
  },
  visual = {
    a = {bg = colors.purple, fg = colors.black, gui = 'bold'},
    b = {bg = colors.lightgray, fg = colors.purple},
    c = {bg = colors.gray, fg = colors.white}
  },
  replace = {
    a = {bg = colors.yellow, fg = colors.black, gui = 'bold'},
    b = {bg = colors.lightgray, fg = colors.yellow},
    c = {bg = colors.gray, fg = colors.white}
  },
  command = {
    a = {bg = colors.red, fg = colors.black, gui = 'bold'},
    b = {bg = colors.lightgray, fg = colors.red},
    c = {bg = colors.gray, fg = colors.white}
  },
  inactive = {
    a = {bg = colors.cyan, fg = colors.gray, gui = 'bold'},
    b = {bg = colors.lightgray, fg = colors.cyan},
    c = {bg = colors.gray, fg = colors.lightgray}
  }
}




require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = custom,
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
