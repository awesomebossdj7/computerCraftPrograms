local arg = ...
local function find(name, ignore_list)
    local search_str = name
    local function extend_search()
      search_str = string.format("*/%s", search_str)
    end
  
    local found = {}
  
    repeat
      local items = fs.find(search_str)
      extend_search()
      if #items > 0 then
        for _, item in ipairs(items) do
          local ignored = false
          for _, ignore in ipairs(ignore_list) do
            if item:match(ignore) then
              ignored = true
              break
            end
          end
          if not ignored then
            found[#found + 1] = item
          end
        end
      end
    until #fs.find(fs.getDir(search_str)) == 0
  
    return found
  end
  local finding = find(arg,{"bingus"})
  for index, value in ipairs(finding) do
        print(value)
  end