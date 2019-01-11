local discordia = require('discordia')
local client = discordia.Client()
--webhook test
client:on('ready', function()
	print('Logged in as '.. client.user.username)
	emoji = client:getGuild(333820130322808832).emojis:find(function(e) return e.name == 'ring' end)
	game = math.random(20)
	print(game)
	if game == 1 then client:setGame('Bionicle heroes')
	elseif game == 2 then client:setGame('Starbound') 
	elseif game == 3 then client:setGame('Halo 5:Forge') 
	elseif game == 4 then client:setGame('with Legos')
	elseif game == 5 then client:setGame('Robot wants Kitty')
	elseif game == 6 then client:setGame('Robot wants Puppy')
	elseif game == 7 then client:setGame('Robot wants Fishy')
	elseif game == 8 then client:setGame('Robot wants Ice cream')
	elseif game == 9 then client:setGame('Alone')
	elseif game == 10 then client:setGame('God') 
	elseif game == 11 then client:setGame('In a pile of corpses')
	elseif game == 12 then client:setGame('Bionicle: Masks of power')
	elseif game == 13 then client:setGame('nothing')
	elseif game == 14 then client:setGame('the Le-Koro Drums')
	elseif game == 15 then client:setGame('Dungeons and Dragons')
	elseif game == 16 then client:setGame('with Kanohi masks')
	elseif game == 17 then client:setGame('With Numbers')
	elseif game == 18 then client:setGame('VRChat')
	elseif game == 19 then client:setGame('With Bonkles')
	elseif game == 20 then client:setGame('With Bionicles') end
end)


client:on('messageCreate', function(message)
if not message.author._imagery then message.author._imagery = 'bio.png' end
print('['..message.channel.name..'] <'..message.author.username..'>:'..message.cleanContent)
print(message.author.discriminator)
	if message.content == 'Hello there!' then
		message.channel:send('General Kenobi!')
	end
	if message.content == '!Commands' then
		message.channel:send('Command categories: Standard, Protocraft')
	end	
	
	if message.content == '!Commands Protocraft' then
		message.channel:send('Commands: !mine, !coins, !pick, !buy pick')
	end

	if message.content == '!Commands Standard' then
		message.channel:send('Commands: !Commands, Hello there!')
	end
	
	if message.content == '!mine' then
		if not message.author._pick then message.author._pick = 1 end
		if not message.author._coins then message.author._coins = 0 end
	message.author._coins = message.author._coins + 1 * message.author._pick
	print(message.author._coins)
	end
	
	if message.content == '``!coins_old``' then
		if not message.author._pick then message.author._pick = 1 end
		if not message.author._coins then message.author._coins = 0 end
		message.channel:send(message.author._coins)
	end
	
	if message.content == "``pie``" then
		message.author._coins = 314159
	end
	
	if message.content == '!pick' then
		if not message.author._pick then message.author._pick = 1 end
		message.channel:send(message.author._pick)
	end
	
		if message.content == '!buy pick' then
		if not message.author._coins then message.author._coins = 0 end
		if not message.author._pick then message.author._pick = 1 end
		if message.author._coins  >4 then 
			message.author._coins = message.author._coins - 5
			message.author._pick = message.author._pick + 1
			message.channel:send('Leftover coins>'..message.author._coins)
			message.channel:send('Pickaxe multiplier>'..message.author._pick)
		end
	end
	
	if message.content == "!coins" then
		if not message.author._pick then message.author._pick = 1 end
		if not message.author._coins then message.author._coins = 0 end
		message.channel:send {
  embed = {
    title = "Data for ".. message.author.name,
    fields = {
      {name = "Coins", value = message.author._coins, inline = true},
      {name = "Picks", value = message.author._pick, inline = true},
    },
    color = discordia.Color.fromRGB(0, 255, 0).value,
    timestamp = discordia.Date():toISO('T', 'Z')
	}}
	
	message:addReaction(emoji)
	end
	
	if message.content == 'What?' then
	message.channel:send(message.channel:getMessagesBefore(message.id, 1):iter()().content)
	end
	
	 if message.author.id ~= client.user.id then
    if string.find(message.content, '``$Echo`` ') then
        Test = string.gsub(message.content, '``$Echo`` ', '')
        message.channel:send(Test)
      end
    end
    
	
	 if message.author.id ~= client.user.id then
    if string.find(message.content, '``$TEcho `` ') and Techochannel then
        Test = string.gsub(message.content, '``$TEcho `` ', '')
        Techochannel:send(Test)
      end
    end
    
	if message.content == '``$TEcho``' then
	Techochannel = message.channel
	end
	
	
	if message.content == '!roleInfo' then
	local roleInfo = message.channel.guild:getMember(message.author.id).highestRole
	message.channel:send {
	file = message.author._imagery,
  embed = {
	
    title = "Data for ".. message.channel.guild:getMember(message.author.id).name,
    fields = {
      {name = "Highest Role", value = roleInfo.name, inline = true},
    },
	 image = {
            url = message.author:getAvatarURL(512)
        },
	
    color = roleInfo:getColor().value,
    timestamp = discordia.Date():toISO('T', 'Z')
	}}
	print(imagery)
	end
	
		if message.content == '!guildInfo' then
	local roleInfo = message.channel.guild:getMember(message.author.id).highestRole
	message.channel:send {
	file = message.author._imagery,
  embed = {
	
    title = "Data for ".. message.guild.name,
    fields = {
      {name = "Region", value = message.guild.region, inline = true},
    },
	 image = {
            url = message.guild.iconURL
        },
	
    color = roleInfo:getColor().value,
    timestamp = discordia.Date():toISO('T', 'Z')
	}}
	print(imagery)
	end
	
	
	if message.content == '``vali``' then
	message.author._imagery = 'vali.png'
	end
	if message.content == '``bio``' then
	message.author._imagery = 'bio.png'
	end
	if message.content == '``acro``' then
	message.author._imagery = 'acro.png'
	end
	
	if message.content == '!' then
	tEchoChannel:send('...')
	end
	
	if message.content == '``!endprocess``' and message.author.discriminator == client:getUser('257629581459193863').discriminator then client:stop() end
	
	if message.content == '!GameInfo --noembed' then message.channel:send(message.member.nickname..' is playing: '..message.member.gameName..'.') end
	
	if message.content == ('no u' or 'No u' or 'NO U' or 'no U' or 'No U' or '? ?  ?') then
	message:delete()
	end
	
end)


