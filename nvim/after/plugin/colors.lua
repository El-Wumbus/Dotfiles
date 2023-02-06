function ColorEverything(background)
    background = background or "dark"
	vim.o.background = background
    vim.cmd.colorscheme("gruvbox")

    vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

ColorEverything()
