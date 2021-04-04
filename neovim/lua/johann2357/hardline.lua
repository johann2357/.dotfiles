require("hardline").setup {
    bufferline = true,
    theme = "gruvbox",
    sections = {
        {class = 'mode', item = require('hardline.parts.mode').get_item},
        {class = 'high', item = require('hardline.parts.git').get_item, hide = 80},
        '%<',
        {class = 'med', item = require('hardline.parts.filename').get_item},
        {class = 'med', item ='%='},
        -- {class = 'low', item = require('hardline.parts.wordcount').get_item, hide = 80},
        {class = 'error', item = require('hardline.parts.lsp').get_error},
        {class = 'warning', item = require('hardline.parts.lsp').get_warning},
        {class = 'warning', item = require('hardline.parts.whitespace').get_item},
    },
}
