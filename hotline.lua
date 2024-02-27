local plugin = ...
plugin.name = 'hotline'
plugin.author = 'sans'
plugin.description = 'a suicide hotline'

local hotline
local inspmessages = {
	"DON'T do it!",
	"You matter",
	"You are enough",
	"Put the gun down!",
	"It's okay to take a break.",
	"Just keep going.",
	"Tough times are what make us human.",
  "1-800-784-2433",
	"You know what? I actually don't give a shit. Fucking do it..",
	}

plugin.commands['/hotline'] = {
	info = 'a suicicde hotline',
	cancall = function (ply) return ply end,
	call = function (ply, man, _)
	assert(man, "not spawned in.")
		if man.isAlive == true then
		ply:sendMessage(inspmessages[math.random(#inspmessages)])
		end
	end
}
