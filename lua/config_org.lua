-- init.lua

-- Load custom treesitter grammar for org filetype
require('orgmode').setup_ts_grammar()

-- Treesitter configuration
require('nvim-treesitter.configs').setup {
  -- If TS highlights are not enabled at all, or disabled via `disable` prop,
  -- highlighting will fallback to default Vim syntax highlighting
  highlight = {
    enable = true,
    -- Required for spellcheck, some LaTex highlights and
    -- code block highlights that do not have ts grammar
    additional_vim_regex_highlighting = {'org'},
  },
  ensure_installed = {'org'}, -- Or run :TSUpdate org
}

require('orgmode').setup({
  org_agenda_files = {
    '~/Documents/org/agenda/*',
    '~/Documents/org/**/*',
    '~/Documents/org/inbox.org',
    '~/Documents/org/todo.org',
    '~/Documents/org/projects.org'
  },
  org_default_notes_file = '~/Documents/org/refile.org',
  org_capture_templates = {
    t = {description = 'Todo', template = '* %f\n** TODO %? DEADLINE:%<%Y-%m-%d>\n\t- %a', target = '~/Documents/org/todo.org'},
    n = {description = 'Note', template = '* %?', target = '~/Documents/org/refile.org'},
    r = {description = 'Repo',
          template = "* [[%x][%(return string.match('%x', '([^/]+)$'))]]%?",
          target = '~/Documents/org/repos.org'},
    R = {description = 'References',
          template = "* %f\n** NOTE: [[%x][%?]]\n\t- %a",
          target = '~/Documents/org/references.org'},
    T = {description = 'Today', template = '* TODO %?', target = '~/Documents/org/agenda/today.org'},
    w = {description = 'This week', template = '* TODO %?', target = '~/Documents/org/agenda/this_week.org'},
    m = {description = 'This month', template = '* TODO %?', target = '~/Documents/org/agenda/this_month.org'},
    j = {
      description = 'Journal',
      template = '\n*** %<%Y-%m-%d> %<%A>\n**** %U\n\n%?',
      target = '~/Documents/org/journal.org'
    },
    e =  'Event',
    er = {
      description = 'recurring',
      template = '** %?\n %T',
      target = '~/org/calendar.org',
      headline = 'recurring'
    },
    eo = {
      description = 'one-time',
      template = '** %?\n %T',
      target = '~/org/calendar.org',
      headline = 'one-time'
    },
  },
  org_todo_keywords = {'TODO(t)', 'DOING(g)', '|', 'WAITING(w)', 'DONE(d)'},
  notifications = {
    enabled = false,
    cron_enabled = true,
    repeater_reminder_time = false,
    deadline_warning_reminder_time = false,
    reminder_time = 10,
    deadline_reminder = true,
    scheduled_reminder = true,
    notifier = function(tasks)
      local result = {}
      for _, task in ipairs(tasks) do
        require('orgmode.utils').concat(result, {
          string.format('# %s (%s)', task.category, task.humanized_duration),
          string.format('%s %s %s', string.rep('*', task.level), task.todo, task.title),
          string.format('%s: <%s>', task.type, task.time:to_string())
        })
      end

      if not vim.tbl_isempty(result) then
        require('orgmode.notifications.notification_popup'):new({ content = result })
      end
    end,
    cron_notifier = function(tasks)
      for _, task in ipairs(tasks) do
        local title = string.format('%s (%s)', task.category, task.humanized_duration)
        local subtitle = string.format('%s %s %s', string.rep('*', task.level), task.todo, task.title)
        local date = string.format('%s: %s', task.type, task.time:to_string())

        -- Linux
        if vim.fn.executable('notify-send') == 1 then
          vim.loop.spawn('notify-send', { args = { string.format('%s\n%s\n%s', title, subtitle, date) }})
        end

        -- MacOS
        if vim.fn.executable('terminal-notifier') == 1 then
          vim.loop.spawn('terminal-notifier', { args = { '-title', title, '-subtitle', subtitle, '-message', date }})
        end
      end
    end
  },
})
