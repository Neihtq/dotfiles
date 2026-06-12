---@type LazySpec
return {
  -- Markdown Preview Plugin
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && npm install",
    ft = { "markdown" },
  },
}
