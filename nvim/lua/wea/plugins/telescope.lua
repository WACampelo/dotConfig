local setup, telescope = pcall(require, "telescope")
if not setup then
  return
end

local setup_actions, actions = pcall(require, "telescope.actions")
if not setup_actions then
  return
end

telescope.setup({
  defaults = {
    mappings = {
      i = {
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
      }
    }
  }
})

telescope.load_extension("fzf")
