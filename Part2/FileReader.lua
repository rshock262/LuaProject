--[[
Counts words from a filename given in the command line
Example: "lua FileReader.lua someFile.txt"
Outputs to a new text file "output.txt" and writes the word count
--]]
local filesize = 2^13
    local f = io.input(arg[1])
    local wc = 0
    while true do
      local lines, rest = f:read(filesize, "*line")
      if not lines then break end
      if rest then lines = lines .. rest .. '\n' end
      local _,t = string.gsub(lines, "%S+", "")
      wc = wc + t
    end
io.output("output.txt")
local f2 = io.input("output.txt")
io.write(wc, " words in ", arg[1])
io.input():close()