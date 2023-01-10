function onCreate()
	-- background shit
	
	makeLuaSprite('jmanroom', 'jmanroom', -150, 100);
	setScrollFactor('jmanroom', 1.0, 1.0);
	scaleObject('jmanroom', 1.1, 1.1);

	makeLuaSprite('boxlight', 'boxlight', -150, 100);
	setScrollFactor('boxlight', 1.0, 1.0);
	scaleObject('boxlight', 1.1, 1.1);
        

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		
	end

	addLuaSprite('boxlight', true);
	addLuaSprite('jmanroom', false);
        

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end