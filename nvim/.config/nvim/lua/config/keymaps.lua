local map = vim.keymap.set

-- file tree (VS Code sidebar equivalent)
map("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Toggle file explorer" })

-- telescope (Cmd/Ctrl+P equivalent)
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Grep in project" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Find buffers" })

-- window/buffer basics
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save" })
map("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })
map("n", "<leader>bd", "<cmd>bd<CR>", { desc = "Close buffer" })

-- clear search highlight
map("n", "<Esc>", "<cmd>nohlsearch<CR>")
