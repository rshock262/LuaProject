--[[
	Playlist where songs are objects that have name, artist, and album parameters as strings
	Playlist itself is a an array of each object
	Necessary playlist features: Play, add, remove
	Possible extras: Search, update, multiple playlists
--]]
--I'm not quite sure what this does, but the account code does 
--something similar and this code won't run without this
Song = {"N/A"}

--creates a song, o is the index, title being a value in the table,
--in this case a song title
function Song:new (o, title)
	o = o or {title=title}
	setmetatable(o, self)
	self.__index = self
	return o
end

--prints out song name
function Song:display()
	print("Now Playing: "..self.title)
end

--some basic objects, iterator doesn't work if the index are not nil,
--songs are just numbered tracks at the moment
s1 = Song:new(nil,"Track 1")
s2 = Song:new(nil,"Track 2")
s3 = Song:new(nil,"Track 3")
s4 = Song:new(nil,"Track 4")
s5 = Song:new(nil,"Track 5")

--linked list of objects
plist = {s1, s2, s3, s4, s5}

--tests to see if it actually outputs which it does, currently commented out obviously
--[[
s1:display()
s2:display()
s3:display()
--]]
--generic for loop for iteration, counts by each index, pairs it with it's value
for index,value in pairs(plist) do
	--I assume there's a way to call one of the objects with the 
	--display field called on it to make it barf out the name
	--currently it iterates through the list for each value in the list, in this case 5 times
	plist[value]=index
end