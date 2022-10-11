-- :help options
o = vim.opt;

o.backup = false                                    -- creates a backup file
o.clipboard = "unnamedplus"                         -- allows neovim to access the system clipboard
o.cmdheight = 2                                     -- more space in the neovim command line for displaying messages
o.completeopt = { "menuone", "noselect" }           -- mostly just for cmp
o.conceallevel = 0                                  -- so that `` is visible in markdown files
o.fileencoding = "utf-8"                            -- the encoding written to a file
o.hlsearch = false                                  -- determins whether search results will stay highlighted after search
o.ignorecase = true                                 -- ignore case  in search  patterns
o.mouse = "a"                                       -- allow the mouse to be used in neovim
o.pumheight = 10                                    -- pop up menu height
o.showmode = true                                   -- display what neovim mode you're in (INSERT/VISUAL/COMMAND)
o.showtabline = 2                                   -- always show tabs
o.smartcase = true                                  -- smart case
o.smartindent = true                                -- make indenting smart
o.splitbelow = true                                 -- force all horizontal splits to split below current window
o.splitright = true                                 -- force all vertical splits to split to the right of current window
o.swapfile = false                                  -- create a swapfile
o.termguicolors = true                              -- sets terminal colors
o.timeoutlen = 1000                                 -- time to wait for a mapped sequence to complete (in milliseconds)
o.undofile = true                                   -- enable persisten undo
o.updatetime = 300                                  -- faster completion (4000ms default)
o.writebackup = false                               -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
o.expandtab = true                                  -- convert tabs to spaces
o.shiftwidth = 4                                    -- the number of spaces inserted for each indentation
o.tabstop = 4                                       -- number of spaces a tab uses
o.softtabstop = 4                                   -- soft tab stop...
o.cursorline = true                                 -- highlight the current line
o.guicursor = ""
o.number = true                                     -- set numberd lines
o.relativenumber = true                             -- set relative numbered lines
o.numberwidth = 4                                   -- set number column width to n {default = 4}
o.signcolumn = "yes"                                -- always show the sign column, otherwise it would shift the text each time
o.wrap = false                                      -- word wrapping
o.scrolloff = 8                                     -- not sure look it up
o.sidescrolloff = 8                                 -- similar to above
o.guifont = "monospace:h17"                         -- the font used in graphical neovim applications
o.errorbells = false
o.breakindent = true

o.shortmess:append "c"

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]                        -- makes functions treat connected text as one word i.e.(asdasd-asdasda)
vim.cmd [[set formatoptions-=cro]]                  -- TODO: this may not work
