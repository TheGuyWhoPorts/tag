function onCreate()
	-- background shit
	makeLuaSprite('forest', 'forest', -1700, -1100);
	setScrollFactor('forest', 0.9, 0.9);
	scaleObject('forest', 1.1, 1.1);
	
        makeLuaSprite('stump', 'stump', -750, -400);
	setScrollFactor('stump', 1.0, 1.0);
	scaleObject('stump', 1.1, 1.1);
        

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		
	end

	addLuaSprite('forest', false);
	addLuaSprite('stump', false);
        

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end