function onCreate()
    --you can copy the parts below as much as you want
	makeLuaSprite('citypixelwindow', 'citypixelwindow', -550, -1000); --edit the X and Y values
	setProperty('citypixelwindow.antialiasing', false);
	scaleObject('citypixelwindow', 2.2, 2.2)

	makeAnimatedLuaSprite('NewpixelRAINLayer', 'NewpixelRAINLayer', -500, -130); --edit the X and Y values
	addAnimationByPrefix('NewpixelRAINLayer', 'idle', 'RainpixelFirstlayer', 24, true); --Or false
	setProperty('NewpixelRAINLayer.antialiasing', false);
	scaleObject('NewpixelRAINLayer', 1, 1)

	makeLuaSprite('citypixelbuldings', 'citypixelbuldings', -550, -1000); --edit the X and Y values
	setProperty('citypixelbuldings.antialiasing', false);
	scaleObject('citypixelbuldings', 2.2, 2.2)
end

function onUpdate(elapsed)
    --Change To Pixel
	if curStep == 1728 then
	    removeLuaSprite('citybuildingsnightskysky', false); --you can copy this as much as you want
		removeLuaSprite('NewRainLayer01', false);
		removeLuaSprite('citybuilding', false);
		removeLuaSprite('citystagewindow', false);
		removeLuaSprite('citystagemetalroomhousething', false);
		addLuaSprite('citypixelbuldings', false); --Or true
		addLuaSprite('NewpixelRAINLayer', false); --Or true
		addLuaSprite('citypixelwindow', false); --Or true

	    for i=0,4,1 do
		    setPropertyFromGroup('opponentStrums', i, 'texture', 'PIXELNOTE_assets');
		    setPropertyFromGroup('playerStrums', i, 'texture', 'PIXELNOTE_assets');
	    end
	end

	if curStep == 1728 then --This one MUST be at least 16 or 32 steps earlier (depends of the version of Psych Engine)
        for i = 0, getProperty('unspawnNotes.length')-1 do
		    setPropertyFromGroup('unspawnNotes', i, 'texture', 'PIXELNOTE_assets');
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'PIXELnoteSplashes');
        end
	end
	--Back to normal
	if curStep == 2160 then
	    removeLuaSprite('citypixelbuldings', false); --Or true
		removeLuaSprite('NewpixelRAINLayer', false); --Or true
		removeLuaSprite('citypixelwindow', false);
		addLuaSprite('citybuildingsnightskysky', false); --Or true
		addLuaSprite('NewRainLayer01', false);
		addLuaSprite('citybuilding', false);
		addLuaSprite('citystagewindow', false);
		addLuaSprite('citystagemetalroomhousething', false);

	    for i=0,4,1 do
		    setPropertyFromGroup('opponentStrums', i, 'texture', 'NOTE_assets');
		    setPropertyFromGroup('playerStrums', i, 'texture', 'NOTE_assets');
	    end
	end

	if curStep == 2160 then --This one MUST be at least 16 or 32 steps earlier (depends of the version of Psych Engine)
        for i = 0, getProperty('unspawnNotes.length')-1 do
		    setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets');
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'noteSplashes');
        end
	end
end
