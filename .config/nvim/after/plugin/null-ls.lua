local null_ls_status, null_ls = pcall(require, "null-ls")
if not null_ls_status then
	return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
-- vim.cmd('map <Leader>lf :lua vim.lsp.buf.format({timeout_ms = 2000})<CR>')

-- To setup format on save
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
	sources = {
		formatting.prettier, -- JS/TS formatter
		formatting.stylua, -- lua formatter
		diagnostics.eslint_d.with({ -- JS/TS linter
			-- only enable eslint if root has .eslintrc.js
			condition = function(utils)
				return utils.root_has_file(".eslintrc.js") -- change file extension if you use something else
			end,
		}),
	},
	-- configure format on save
	on_attach = function(current_client, bufnr)
		if current_client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					-- vim.lsp.buf.formatting_sync(
					-- vim.lsp.buf.format({
						-- filter = function(client)
							-- only use null-ls for formatting instead of lsp-server
							-- return client.name == "tsserver"
						-- end,
						-- bufnr = bufnr,
					vim.lsp.buf.format({ timeout_ms = 2000 })
					-- })
				end,
			})
		end
	end,
})