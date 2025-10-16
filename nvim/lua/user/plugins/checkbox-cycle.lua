-- DOCS: https://github.com/epilande/checkbox-cycle.nvim
return {
  'epilande/checkbox-cycle.nvim',
  ft = 'markdown',
  opts = {
    states = { '[ ]', '[x]' },
  },
  keys = {
    { '<CR>', '<Cmd>CheckboxCycleNext<CR>', desc = 'Checkbox Next', ft = { 'markdown' }, mode = { 'n', 'v' } },
    { '<S-CR>', '<Cmd>CheckboxCyclePrev<CR>', desc = 'Checkbox Previous', ft = { 'markdown' }, mode = { 'n', 'v' } },
    { '<leader>x', '<Cmd>CheckboxCycleNext<CR>', desc = 'Checkbox Next', ft = { 'markdown' }, mode = { 'n', 'v' } },
  }
}
