local meta = FindMetaTable("Player")
	function meta:GetOsID()
		local id = self:SteamID64()
		id = string.sub( id, string.len( id )-5, string.len( id ) )
		return id
	end