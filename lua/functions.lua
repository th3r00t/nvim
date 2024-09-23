local vim = vim
local fzf = require("fzf")
local fzflua = require("fzf-lua")
local Job = require'plenary.job'

function t3_find_file()
  -- local file_name = vim.fn.input("Find File: ", "", "file")
  fzflua.files()
end

function t3_recent_files()
  fzflua.oldfiles()
end

function t3_buffers()
  fzflua.buffers()
end

function t3_tabs()
  fzflua.tabs()
end

function t3_live_grep(state)
  state = state or 0
  if state == 0 then
    fzflua.live_grep()
  else
    fzflua.live_grep_resume()
  end
end

function t3_make_ctags()
  Job:new({
    command = 'ctags',
    args = { '-R .' },
  })
end
