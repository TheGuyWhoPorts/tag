function onCreate()
    --you can copy the parts below as much as you want
	makeLuaSprite('jmanroom', 'jmanroom', -150, 100); --edit the X and Y values
	setProperty('jmanroom.antialiasing', false);
	scaleObject('jmanroom', 1.0, 1.0)

	makeLuaSprite('boxlight', 'boxlight', -150, 100); --edit the X and Y values
	setProperty('boxlight.antialiasing', false);
	scaleObject('boxlight', 1.1, 1.1)
        end

  function onUpdate(elapsed)
    --Change To Pixel
	if curStep == 528 then
	    removeLuaSprite('stagejmanforest', false); --you can copy this as much as you want
            removeLuaSprite('stumpfnfthing', false);
	    addLuaSprite('boxlight', true); --Or true
	    addLuaSprite('jmanroom', false); --Or true
        
        for i=0,4,1 do
		    setPropertyFromGroup('opponentStrums', i, 'texture', 'NOTE_assets');
		    setPropertyFromGroup('playerStrums', i, 'texture', 'NOTE_assets');
	    
	end

	if curStep == 1088 then --This one MUST be at least 16 or 32 steps earlier (depends of the version of Psych Engine)
        for i = 0, getProperty('unspawnNotes.length')-1 do
		    setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets');
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'PIXELnoteSplashes');
        end
	end
	--Back to normal
	if curStep == 1600 then
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

	if curStep == 1600 then --This one MUST be at least 16 or 32 steps earlier (depends of the version of Psych Engine)
        for i = 0, getProperty('unspawnNotes.length')-1 do
		    setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets');
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'noteSplashes');
        end
	end
end
end

