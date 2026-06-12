-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.typescript" },
  -- Markdown preview plugin
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      enabled = false, -- Don't auto-render
    },
    ft = { "markdown" },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
  },
}
