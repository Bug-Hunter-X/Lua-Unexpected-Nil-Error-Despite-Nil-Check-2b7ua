local function foo(x)
  if x == nil then
    return 0 --or handle it in a more appropriate way
  end
  return x * 2
end

local result = foo(nil) 
print(result) -- prints 0

--Alternative solution using pcall for error handling
local status, result = pcall(foo, nil)
if not status then
  print("Error:", result)
else
  print(result)
end