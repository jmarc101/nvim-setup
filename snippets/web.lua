local ls = require "luasnip"

local s = ls.snippet
local i = ls.insert_node
local f = ls.function_node
local extras = require("luasnip.extras")
local rep = extras.rep
local fmt = require("luasnip.extras.fmt").fmt
local filetypes = {"typescript", "typescriptreact", "javascript", "javascriptreact"}

-- take a list of proptypes ie: { foo: string; bar: Date; }
-- and returns a list of props ie: (foo, bar)
local function split_types(index)
  return f(function(component)
    local first_words = {}
    for _, line in ipairs(component[1]) do
      local prop_name = vim.trim(vim.split(line, ":")[1])
      table.insert(first_words, prop_name)
    end

    local props = table.concat(first_words, ", ")

    return props
  end, { index })
end

local function get_filename()
  return f(function ()
    return vim.fn.expand('%:t'):gsub("%..+$", "")
  end)
end

-- Loop through web-dev files for the snippets
for _, ft in ipairs(filetypes) do
  ls.add_snippets(ft, {
    -- import snippet
    s(
      "imp",
      fmt(
        'import {} from "{}";', { i(1), i(2) }
      )
    ),

    -- console.log snipper with message mirroring object
    s(
      "cl",
      fmt(
        'console.log("{}", {});', { rep(1), i(1) }
      )
    ),

    -- markup snippet that make last markup stop copying after first space
    s(
      "<",
      fmt('<{}>{}</{}>', { i(1), i(2), f(function(markup)
        local splits = vim.split(markup[1][1], " ")
        return splits[1]
      end, {1}) }
      )
    ),

     -- React functional component
    s(
      "rfc",
      fmt([[
        function {}() {{
          return (
            <></>
          )
        }}

        export {{ {} }};
      ]], {
          get_filename(),
          rep(1),
        }
      )
    ),

    -- React functional component Typed
    s(
      "rfct",
      fmt([[
        type {}Props = {{
          {}
        }}
        function {}({{ {} }}: {}Props) {{
          return (
            <></>
          )
        }}

        export {{ {} }};
      ]], {
          get_filename(),
          i(1),
          get_filename(),
          split_types(1),
          get_filename(),
          get_filename(),
        }
      )
    ),

    -- it() test statement
    s(
      'it',
      fmt([[
      it("{}", async() => {{
        render({});
      }});
    ]], { i(1), i(2) })
    ),

  })
end


