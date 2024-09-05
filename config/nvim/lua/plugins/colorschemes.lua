return {
    { "morhetz/gruvbox",        lazy = true },
    { "rakr/vim-one",           lazy = true },
    { "rakr/vim-two-firewatch", lazy = true },
    { "sjl/badwolf",            lazy = true },
    { "jacoborus/tender.vim",   lazy = true },
    {
        "sainnhe/everforest",
        config = function()
            vim.cmd [[ let g:everforest_enable_italic = 1 ]]
        end
    },
}
