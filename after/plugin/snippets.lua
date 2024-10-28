local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local f = ls.function_node
local i = ls.insert_node
local types = require("luasnip.util.types")

ls.snippets = {
  all = {
    -- Date and Time
    s("date", f(function()
      return os.date("%d/%m/%Y")
    end))
  },
  python = {s("main", f({"if __name__ == '__main__':", "\t${1:main()}"}))},
  -- LaTeX snippets
  latex = {
    -- Equation environment
    s("eq", f({"\\begin{equation}", "\t${1:equation}", "\\end{equation}"})),
    -- Equation* environment
    s("eq*", f({"\\begin{equation*}", "\t${1:equation}", "\\end{equation*}"})),
    -- Align environment
    s("align", f({"\\begin{align}", "\t${1:equation}", "\\end{align}"})), -- Align* environment
    s("align*", f({"\\begin{align*}", "\t${1:equation}", "\\end{align*}"})),
    -- Configuration Snippets
    s({trig = "dc"}, {t("\\documentclass[", i(1), "]{", i(2), "}")}),
    s({trig = "use"}, {t("\\usepackage[", i(1), "]{", i(2), "}")}),
    -- Greek letters, make automatic
    s({trig = "alpha", snippetType = "autosnippet"}, {t("\\alpha")}),
    s({trig = "Alpha", snippetType = "autosnippet"}, {t("\\Alpha")}),
    s({trig = "beta", snippetType = "autosnippet"}, {t("\\beta")}),
    s({trig = "Beta", snippetType = "autosnippet"}, {t("\\Beta")}),
    s({trig = "gamma", snippetType = "autosnippet"}, {t("\\gamma")}),
    s({trig = "Gamma", snippetType = "autosnippet"}, {t("\\Gamma")})
  }
}

