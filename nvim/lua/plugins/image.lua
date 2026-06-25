-- Inline image rendering in the terminal via the Kitty graphics protocol.
-- Works in Ghostty (and other Kitty-protocol terminals). Renders images
-- referenced in markdown files as you move through the buffer.
--
-- Requires the ImageMagick CLI (`brew install imagemagick`, provides `magick`).
-- Uses the `magick_cli` processor, which shells out to the `magick` binary
-- directly, so no `magick` luarock / luarocks install is required.
return {
  "3rd/image.nvim",
  ft = { "markdown" },
  build = false,
  opts = {
    backend = "kitty", -- Ghostty speaks the Kitty graphics protocol
    processor = "magick_cli", -- use the ImageMagick `magick` binary directly
    integrations = {
      markdown = {
        enabled = true,
        clear_in_insert_mode = false,
        download_remote_images = true, -- render http(s) images too
        only_render_image_at_cursor = false,
        filetypes = { "markdown" },
      },
    },
    max_width = nil,
    max_height = nil,
    max_width_window_percentage = nil,
    max_height_window_percentage = 50,
    window_overlap_clear_enabled = true, -- hide images when other windows overlap
  },
}
