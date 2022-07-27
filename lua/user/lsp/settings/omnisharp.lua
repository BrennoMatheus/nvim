local pid = vim.fn.getpid()
local omnisharp_bin = "/Users/064658/.local/share/nvim/lsp_servers/omnisharp/omnisharp/OmniSharp.dll"

return {
  cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) },
  omnisharp = {
    useModernNet = true,
    -- monoPath = "/usr/bin/mono",
  },
}
