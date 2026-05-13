return {
  {
    "kylechui/nvim-surround",
    version = "^4.0.0",
    event = "VeryLazy",
    -- Optional: See `:h nvim-surround.configuration` and `:h nvim-surround.setup` for details
    -- config = function()
    --     require("nvim-surround").setup({
    --         -- Put your configuration here
    --     })
    -- end
  },
}

--[[
    Old text                    Command         New text
--------------------------------------------------------------------------------
---add
    surr*ound_words             ysiw)           (surround_words)
    surr*ound_words             ysiw(           ( surround_words )
    *make strings               ys$"            "make strings"
---change
    <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
    'change quot*es'            cs'"            "change quotes"
---delete
    [delete ar*ound me!]        ds]             delete around me!
    remove <b>HTML t*ags</b>    dst             remove HTML tags
    delete(functi*on calls)     dsf             function calls
--]]
