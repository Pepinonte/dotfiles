vim.opt.termguicolors = true
local status, bufferline = pcall(require, "bufferline")
if not status then
  print("ERROR bufferline")
  return
end

bufferline.setup({
options = {
-- separator_style = { "", "" },
 separator_style = "slant",
  },
})
