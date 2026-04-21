require("flash").setup {
    highlight = {
        backdrop = false,
        matches  = true,
    },
}

--flash
--
vim.keymap.set({ "n", "x", "o" }, "f", function()
  require("flash").jump() end, { desc = "Flash jump (replaces f motion)" })
