function start(song) -- do nothing

	showOnlyStrums = true

end

function update(elapsed)
        local currentBeat = (songPos / 1000)*(bpm/60)
		for i=0,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 99 * math.sin((currentBeat + i*25) * math.pi), i)
			setActorY(_G['defaultStrum'..i..'Y'] + 10 * math.cos((currentBeat + i*0.10) * math.pi), i)
		end
end

function beatHit(beat) -- do nothing
        local currentBeat = (songPos / 1000)*(bpm/60)
		for i=0,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 80 * math.sin((currentBeat + i*15) * math.pi), i)
			setActorY(_G['defaultStrum'..i..'Y'] + 3 * math.cos((currentBeat + i*3) * math.pi), i)
		end
end

function stepHit(step) -- do nothing
        local currentBeat = (songPos / 1000)*(bpm/60)
		for i=0,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 95 * math.sin((currentBeat + i*10) * math.pi), i)
			setActorY(_G['defaultStrum'..i..'Y'] + 5 * math.cos((currentBeat + i*0.5) * math.pi), i)
		end
end