return {
    -- "hardhackerlabs/theme-vim",
    -- "drewtempelmeyer/palenight.vim",
    -- "sainnhe/sonokai",
    "vim-scripts/true-monochrome",
    lazy = false,
    priority = 1000,
    config = function()
        -- vim.g.hardhacker_hide_tilde = 1
        -- vim.g.hardhacker_keyword_italic = 0
        vim.cmd("colorscheme true-monochrome")
        -- vim.cmd("colorscheme sonokai")
        -- vim.cmd("colorscheme palenight")
        -- vim.cmd("colorscheme hardhacker")
    end,
}
