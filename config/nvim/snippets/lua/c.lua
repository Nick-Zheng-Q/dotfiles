local ls = require "luasnip"
local s = ls.snippet
local c = ls.choice_node
local t = ls.text_node
local d = ls.dynamic_node
local i = ls.insert_node
local sn = ls.snippet_node
local fmta = require("luasnip.extras.fmt").fmta
local fmt = require("luasnip.extras.fmt").fmt
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
  s(
    "flfunc",
    fmta(
      [[
      float <name>(<args>) {
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
  s(
    "pint",
    fmta(
      [[
      printf("<name>: %d\n", <name_same>);
      <finish>
      ]],
      {
        name = i(1),
        name_same = rep(1),
        finish = i(0),
      }
    )
  ),
  s(
    "fmt2",
    fmt(
      [[
		foo({1}, {3}) {{
			return {2} * {4}
		}}
		]],
      {
        i(1, "x"),
        rep(1),
        i(2, "y"),
        rep(2),
      }
    )
  ),
  s(
    "for",
    fmt(
      [[
    for (int {1} = 0; {3} < {2}; {4}++) {{
      {5}
    }}
    ]],
      {
        i(1, "i"),
        i(2, "n"),
        rep(1),
        rep(1),
        i(0),
      }
    )
  ),
}
