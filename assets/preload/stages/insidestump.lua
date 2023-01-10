function onCreate()
	-- background shit
	
	makeLuaSprite('stagejmanforest', 'stagejmanforest', -750, -400);
	setScrollFactor('stagejmanforest', 1.0, 1.0);
	scaleObject('stagejmanforest', 1.1, 1.1);

	makeLuaSprite('stumpfnfthing', 'stumpfnfthing', -450, -400);
	setScrollFactor('stumpfnfthing', 1.0, 1.0);
	scaleObject('stumpfnfthing', 1.1, 1.1);
        

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		
	end

	addLuaSprite('stumpfnfthing', true);
	addLuaSprite('stagejmanforest', false);
        

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end