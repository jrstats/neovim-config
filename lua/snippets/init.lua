local ls = require("luasnip")

ls.add_snippets("python", {
  ls.parser.parse_snippet("duckdb", "import ember_climate.helpers.duckdb as d"),
})
