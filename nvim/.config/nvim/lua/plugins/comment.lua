return
{
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    },
    lazy = false,
    init = function()
        require('Comment').setup()
        vim.keymap.set("n", "<C-l>", function() require('Comment.api').toggle.linewise.current() end, { noremap = true, silent = true })
        vim.keymap.set("x", "<C-l>", 
        function() 
            local esc = vim.api.nvim_replace_termcodes('<ESC>', true, false, true)
            vim.api.nvim_feedkeys(esc, 'nx', false)
            require('Comment.api').toggle.linewise(vim.fn.visualmode())
        end,
        { noremap = true, silent = true })
    end
}

