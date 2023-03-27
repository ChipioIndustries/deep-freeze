local t = require(script.Parent.t)

local function deepFreeze(tbl)
	assert(t.table(tbl))
	for _index, object in pairs(tbl) do
		if typeof(object) == "table" then
			deepFreeze(object)
		end
	end
	table.freeze(tbl)
	return tbl
end

return deepFreeze