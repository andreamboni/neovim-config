local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local bridges_airlines = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = '/home/andreamboni/Development' .. bridges_airlines 

-- See `:help vim.lsp.start_client` for an overview of the supported `config` options.
local config = {
  cmd = {

    'java', -- or '/path/to/java17_or_newer/bin/java'
            -- depends on if `java` is in your $PATH env variable and if it points to the right version.

    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-Xms1g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens', 'java.base/java.util=ALL-UNNAMED',
    '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
    '-jar', '/home/andreamboni/jdt-lsp/plugin/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
    '-configuration', '/home/andreamboni/jdt-lsp/config_ss_linux',
    '-data', workspace_dir
  },

  root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'}),
  capabilities = capabilities
}
require('jdtls').start_or_attach(config)

