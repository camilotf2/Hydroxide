local Explorer = {}
local Methods = import("modules/Explorer")

if not hasMethods(Methods.RequiredMethods) then
    return Explorer
end

local Assets = import("rbxassetid://78370384618967").Explorer

local function addTrash()
    local log;
    local valuetype
    if typeof(valuetype) == 'table' then
        log = Assets.Table:Clone()
    elseif typeof(valuetype) == 'function' then
        log = Assets.KeyNode:Clone()
    end

    return log
end

for _,v in Methods.scan() do
    addTrash(v)
end

return Explorer