local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

local coolLines = {
       [[__        __        _               _               _             ]],
       [[\ \      / /__     / \   _ __ ___  | |    ___  __ _(_) ___  _ __  ]],
       [[ \ \ /\ / / _ \   / _ \ | '__/ _ \ | |   / _ \/ _` | |/ _ \| '_ \ ]],
       [[  \ V  V /  __/  / ___ \| | |  __/ | |__|  __/ (_| | | (_) | | | |]],
       [[   \_/\_/ \___| /_/   \_\_|  \___| |_____\___|\__, |_|\___/|_| |_|]],
       [[                                              |___/               ]],
}

local robustLines  = {
       [[__        __        _               _               _             ]],
       [[\ \      / /__     / \   _ __ ___  | |    ___  __ _(_) ___  _ __  ]],
       [[ \ \ /\ / / _ \   / _ \ | '__/ _ \ | |   / _ \/ _` | |/ _ \| '_ \ ]],
       [[  \ V  V /  __/  / ___ \| | |  __/ | |__|  __/ (_| | | (_) | | | |]],
       [[   \_/\_/ \___| /_/   \_\_|  \___| |_____\___|\__, |_|\___/|_| |_|]],
       [[                                              |___/               ]],
}


local efficienLines  = {
       [[__        __        _               _               _             ]],
       [[\ \      / /__     / \   _ __ ___  | |    ___  __ _(_) ___  _ __  ]],
       [[ \ \ /\ / / _ \   / _ \ | '__/ _ \ | |   / _ \/ _` | |/ _ \| '_ \ ]],
       [[  \ V  V /  __/  / ___ \| | |  __/ | |__|  __/ (_| | | (_) | | | |]],
       [[   \_/\_/ \___| /_/   \_\_|  \___| |_____\___|\__, |_|\___/|_| |_|]],
       [[                                              |___/               ]],
}

local function lineToStartGradient(lines)
  local out = {}
  for i, line in ipairs(lines) do
    table.insert(out, { hi = "StartLogo"..i, line = line})
  end
  return out
end

local function lineToStartPopGradient(lines)
  local out = {}
  for i, line in ipairs(lines) do
    local hi = "StartLogo" .. i
    if i <= 6 then
      hi = "StartLogo" .. i + 6
    elseif i > 6 and i <= 12 then
      hi = "StartLogoPop" .. i - 6
    end
    table.insert(out, { hi = hi, line = line})
  end
  return out
end

local function lineToStartShiftGradient(lines)
  local out = {}
  for i, line in ipairs(lines) do
    local n = i
    if i > 6 and i <= 12 then
      n = i + 6
    elseif i > 12 then
      n = i - 6
    end
    table.insert(out, { hi = "StartLogo"..n, line = line})
  end
  return out
end

local cool = lineToStartPopGradient(coolLines)
local robust = lineToStartShiftGradient(robustLines)
local efficient = lineToStartGradient(efficienLines)

local headers = {cool, robust, efficient}

local function header_chars()
  math.randomseed(os.time())
  return headers[math.random(#headers)]
end

-- Map over the headers, setting a different color for each line.
-- This is done by setting the Highligh to StartLogoN, where N is the row index.
-- Define StartLogo1..StartLogoN to get a nice gradient.
local function header_color()
  local lines = {}
  for i, lineConfig in pairs(header_chars()) do
    local hi = lineConfig.hi
    local line_chars = lineConfig.line
    local line = {
      type = "text",
      val = line_chars,
      opts = {
        hl = hi,
        shrink_margin = false,
        position = "center",
      },
    }
    table.insert(lines, line)
  end

  local output = {
    type = "group",
    val = lines,
    opts = { position = "center", },
  }

  return output
end

local theme = require("alpha.themes.theta")
local config = theme.config
local dashboard = require("alpha.themes.dashboard")
local buttons = {
    type = "group",
    val = {
        { type = "text", val = "Quick links", opts = { hl = "SpecialComment", position = "center" } },
        { type = "padding", val = 1 },
        dashboard.button("e", "  New file", "<cmd>ene<CR>"),
        dashboard.button("SPC f", "  Find file"),
        dashboard.button("SPC F", "  Find text", "<cmd>Telescope live_grep<CR>"),
        dashboard.button("u", "  Update plugins", "<cmd>PackerUpdate<CR>"),
        dashboard.button("q", "  Quit", "<cmd>qa<CR>"),
    },
    position = "center",
}
local orgstuff = {
    type = "group",
    val = {
        { type = "text", val = "Org", opts = { hl = "SpecialComment", position = "center" } },
        { type = "padding", val = 1 },
        dashboard.button("o", "  Browse Org Files", "<cmd>FZF ~/Documents/org/<CR>"),
    },
    position = "center",
}

config.layout[2] = header_color()
config.layout[6] = buttons
config.layout[7] = orgstuff
alpha.setup(config)
