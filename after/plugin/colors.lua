require("metamorphosis").setup()

function ColorMyPencils(color)
	color = color or "metamorphosis"
	vim.cmd.colorscheme(color)

	-- Adds opacity to terminal when neovim is open

	-- vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	-- vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})

	local modified = false
	vim.api.nvim_create_autocmd({'UIEnter', 'ColorScheme'}, {
			callback = function()
					local normal = vim.api.nvim_get_hl(0, { name = 'Normal' })
					if normal.bg then
							io.write(string.format('\027]11;#%06x\027\\', normal.bg))
							modified = true
					end
			end,
	})

	vim.api.nvim_create_autocmd('UILeave', {
			callback = function()
					if modified then
							io.write('\027]111\027\\')
					end
			end,
	})
end

ColorMyPencils()
