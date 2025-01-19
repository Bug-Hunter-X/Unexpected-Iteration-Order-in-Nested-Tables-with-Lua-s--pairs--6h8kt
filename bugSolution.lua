local function foo(t)
  local function inorder(t,fn)
    local visited = {}
    local function recurse(t)
      for k, v in pairs(t) do
        if type(v) == "table" then
          recurse(v)
        end
      end
      fn(t)
    end
    recurse(t)
  end
  inorder(t, function(tbl)
    for k,v in pairs(tbl) do
        print(k,v)
    end
  end)
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)