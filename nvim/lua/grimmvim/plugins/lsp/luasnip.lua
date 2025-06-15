return {
	"L3MON4D3/LuaSnip",
	event = "InsertEnter",
	config = function()
		local ls = require("luasnip")
		local s = ls.snippet
		local t = ls.text_node
		local i = ls.insert_node
		local extras = require("luasnip.extras")
		local rep = extras.rep
		local fmt = require("luasnip.extras.fmt").fmt
		-- #########################
		-- custom snippets here
		-- #########################

		-- CPP Snippets
		ls.add_snippets("cpp", {
			s(
				"cfor",
				fmt(
					[[
            for ( {}; {}; {} ) {{
              {}
            }}
          ]],
					{
						i(1, "int i=0"),
						i(2, "i<size"),
						i(3, "i++"),
						i(4),
					}
				)
			),
		})
		ls.add_snippets("cpp", {
			s(
				"temp",
				fmt(
					[[
            #include <cmath>
            #include <cstring>
            #include <iostream>
            using namespace std;

            int main() {{
              {}
              return 0;
            }}
          ]],
					{ i(1) }
				)
			),
		})
		-- react snippets
		ls.add_snippets("javascriptreact", {
			s(
				"compo",
				fmt(
					[[ 
            const {} = ({}) => {{
              {}
              return(
                <div>
                  {} 
                </div>
              )
            }}
            export {{ {} }};
          ]],
					{
						i(1, "Compo"),
						i(2, ""),
						i(0, ""),
						i(3, ""),
						rep(1, "Compo"),
					}
				)
			),
		})
		ls.add_snippets("javascriptreact", {
			s(
				"img",
				fmt(
					[[ 
          <img src="{}" alt="{}" />
         ]],
					{
						i(1),
						i(2),
					}
				)
			),
		})
		ls.add_snippets("javascriptreact", {
			s(
				"input",
				fmt(
					[[ 
          <input type="{}" name="{}" />
         ]],
					{
						i(1, "text"),
						i(2, "name"),
					}
				)
			),
		})
		ls.add_snippets("javascriptreact", {
			s("hr", t("<hr />")),
		})
		ls.add_snippets("javascriptreact", {
			s("br", t("<br />")),
		})
	end,
}
