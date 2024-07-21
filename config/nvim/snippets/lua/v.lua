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
    "if",
    fmta(
      [[
      if (<condition>) begin
        <body>
      end
      <finish>
      ]],
      {
        condition = i(1, "rst_n"),
        body = i(2),
        finish = i(0),
      }
    )
  ),
  s(
    "ife",
    fmta(
      [[
      if (<condition>) begin
        <ifbody>
      end
      else begin
        <elsebody>
      end
      <finish>
      ]],
      {
        condition = i(1, "rst_n"),
        ifbody = i(2),
        elsebody = i(3),
        finish = i(0),
      }
    )
  ),
}
