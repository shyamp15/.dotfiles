return {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    init = function() 
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>s', builtin.find_files, {})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        vim.keymap.set('n', '<leader>g', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") });
        end)
    end
}
