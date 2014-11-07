-- Create main gnuplot object.
local function GnuPlot()
	local GP = {
		is_multiplot = false,
		plots = {}
	}
	
	local GP_mt = {
		__index = function(self, key)
			return self.plots[key]
		end,
		
		-- ToDo: addPlot function.
		__newindex = false
	}
	
	return setmetatable(GP, GP_mt)
end
