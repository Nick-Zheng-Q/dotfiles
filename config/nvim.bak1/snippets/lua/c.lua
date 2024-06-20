local ls = require "luasnip"
local s = ls.snippet
local c = ls.choice_node
local t = ls.text_node
local d = ls.dynamic_node
local i = ls.insert_node
local sn = ls.snippet_node
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

return {
  s(
    "intfunc",
    fmta(
      [[
      int <name>(<args>) {
        <finish>
        return 0;
      }
      ]],
      {
        name = i(1),
        args = i(2),
        finish = i(0),
      }
    )
  ),
}, {
  s("autotrig", t "autotriggered, if enabled"),
}
