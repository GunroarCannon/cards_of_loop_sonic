function lure.dom.createHTMLAreaElement()
	local self = lure.dom.nodeObj.new(1)
	
	--===================================================================
	-- PROPERTIES                                                       =
	--===================================================================
	self.tagName 	= "area"
	---------------------------------------------------------------------
	self.nodeName 	= "AREA"	
	---------------------------------------------------------------------
	self.nodeDesc	= "HTMLAreaElement"
	---------------------------------------------------------------------
	self.style		= lure.dom.HTMLNodeStyleobj.new(self)
	---------------------------------------------------------------------
	
	--===================================================================
	-- MUTATORS                                                         =
	--===================================================================
	
	--===================================================================
	-- METHODS	                                                        =	
	--===================================================================
	self.update = function()
		
	end
	---------------------------------------------------------------------
	self.draw = function()
		
	end
	---------------------------------------------------------------------
	
	return self
end