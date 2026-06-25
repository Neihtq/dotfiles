-- claudecode.nvim: https://github.com/coder/claudecode.nvim
-- Runs Claude Code inside Neovim via the official CLI.
return {
  "coder/claudecode.nvim",
  dependencies = { "folke/snacks.nvim" }, -- optional, used for a nicer terminal UI
  opts = {},
  cmd = {
    "ClaudeCode",
    "ClaudeCodeFocus",
    "ClaudeCodeSend",
    "ClaudeCodeAdd",
    "ClaudeCodeDiffAccept",
    "ClaudeCodeDiffDeny",
  },
  keys = {
    { "<Leader>a", nil, desc = "AI/Claude Code" },
    { "<Leader>ac", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
    { "<Leader>af", "<cmd>ClaudeCodeFocus<cr>", desc = "Focus Claude" },
    { "<Leader>ar", "<cmd>ClaudeCode --resume<cr>", desc = "Resume Claude" },
    { "<Leader>aC", "<cmd>ClaudeCode --continue<cr>", desc = "Continue Claude" },
    { "<Leader>ab", "<cmd>ClaudeCodeAdd %<cr>", desc = "Add current buffer" },
    { "<Leader>as", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send selection to Claude" },
    {
      "<Leader>as",
      "<cmd>ClaudeCodeTreeAdd<cr>",
      desc = "Add file from tree",
      ft = { "NvimTree", "neo-tree", "oil", "minifiles" },
    },
    -- Diff management
    { "<Leader>aa", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" },
    { "<Leader>ad", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Deny diff" },
  },
}
