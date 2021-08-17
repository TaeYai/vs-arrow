function start(song) -- do nothing
	strumLine1Visible = false
	showOnlyStrums = true

function setDefault(id)
	_G['defaultStrum'..id..'X'] = getActorX(id)
end

-- put this somewhere in a function

for i = 4, 7 do -- go to the center
	tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 275,getActorAngle(i) + 360, 0.6, 'setDefault')
end

end

function update(elapsed)
	local currentBeat = (songPos / 1000)*(bpm/60)
	for i=0,7 do
		setActorX(_G['defaultStrum'..i..'X'] + 501 * math.sin((currentBeat + i*0.25) * math.pi), i)
		setActorY(_G['defaultStrum'..i..'Y'] + 50 * math.cos((currentBeat + i*25) * math.pi), i)
	end
end

function beatHit(beat) -- do nothing
	camHudAngle = camHudAngle + 2
end

function stepHit(step) -- do nothing
	camHudAngle = camHudAngle + 2
end

function keyPressed (key)
	camHudAngle = camHudAngle + 2
end