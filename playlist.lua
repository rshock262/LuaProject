--[[
	Playlist where songs are objects that have name, artist, and album parameters as strings
	Playlist itself is a an array of each object
	Necessary playlist features: Play, add, remove
	Possible extras: Search, update, multiple playlists
--]]

Song = {"N/A"}

function Song:new (o, name)
	o = o or {name=name}
	setmetatable(o, self)
	self.__index = self
	return o
end

