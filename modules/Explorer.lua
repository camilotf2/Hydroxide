local Explorer = {}

local requiredMethods = {
    ["getGc"] = true,
}

local function scan()
    for _,v in getGc() do
        return v
    end
end

Explorer.scan = scan
Explorer.RequiredMethods = requiredMethods
return Explorer