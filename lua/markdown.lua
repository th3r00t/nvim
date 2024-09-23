
    require("render-markdown").setup({
     checkbox = {
      enabled = true,
      checked = {
       -- Replaces '[x]' of 'task_list_marker_checked'
       icon = " ",
       -- Highligh for the checked icon
       highlight = "RenderMarkdownChecked",
      },
      custom = {
       started = { raw = "[>]", rendered = " ", highlight = "@markup.raw" },
       deleted = { raw = "[~]", rendered = " ", highlight = "@markup.raw" },
      },
     },
    })
