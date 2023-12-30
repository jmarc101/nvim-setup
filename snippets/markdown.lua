local ls = require "luasnip"

local s = ls.snippet
local i = ls.insert_node
local f = ls.function_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets('all', {

  -- diary template
  s(
    "journal",
      fmt([[
      # {}

      ## Reflections

      ### What were the highlights of your day?
      {}
      ### What were the low points of your day?

      ### What did you learn today?

      ### What are you grateful for today?


      ## Goals

      ### What are your goals for tomorrow?

      ###  What are your long-term goals?


      ## Self-Care

      ###  What did you do to take care of yourself today?

      ### What can you do to take care of yourself tomorrow?

      ## Notes

      ]], {
          f(function ()
            return os.date()
          end),
          i(1),
        })
  )

})
