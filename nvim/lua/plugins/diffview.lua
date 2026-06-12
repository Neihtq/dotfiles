-- diffview.nvim: https://github.com/sindrets/diffview.nvim
return {
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewFileHistory" },
  keys = {
    { "<Leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Git diff" },
    { "<Leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "File history" },
    { "<Leader>gH", "<cmd>DiffviewFileHistory<cr>", desc = "Branch history" },
  },
}
