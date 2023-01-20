local ind_status, indent_blankline = pcall(require, 'indent_blankline')
if not ind_status then
	return
end

indent_blankline.setup {
    show_current_context = true,
    show_current_context_start = true
}
