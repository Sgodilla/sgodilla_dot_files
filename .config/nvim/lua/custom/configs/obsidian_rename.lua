local M = {}

function M.rename()
  local new_name = vim.fn.input("New name: ")
  if new_name ~= "" then
    vim.cmd("ObsidianRename " .. new_name .. " --dry-run")
  else
    print("Rename canceled")
  end
end

return M
