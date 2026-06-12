-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Disable visual bell and error bells to prevent terminal flashing
vim.opt.visualbell = false
vim.opt.errorbells = false

-- Fix visual selection rendering issues
vim.opt.redrawtime = 10000
vim.opt.lazyredraw = false
