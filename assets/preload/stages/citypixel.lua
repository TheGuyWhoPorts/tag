function onCreate()
	-- background shit
	
	
	makeAnimatedLuaSprite('NewpixelRAINLayer','NewpixelRAINLayer', -500, -130)
    luaSpriteAddAnimationByPrefix('NewpixelRAINLayer', 'idle', 'RainpixelFirstlayer instance 1', 24, true);
    setLuaSpriteScrollFactor('NewpixelRAINLayer', 0.9, 0.9);
	scaleObject('NewpixelRAINLayer', 1, 1);


        makeLuaSprite('citypixelbuldings', 'citypixelbuldings', -550, -1000);
	setScrollFactor('citypixelbuldings', 0.9, 0.9);
	scaleObject('citypixelbuldings', 2.2, 2.2);

	
        makeLuaSprite('citypixelwindow', 'citypixelwindow', -550, -1000);
	setScrollFactor('citypixelwindow', 0.9, 0.9);
	scaleObject('citypixelwindow', 2.2, 2.2);


        -- sprites that only load if Low Quality is turned off
	if not lowQuality then
		
	end

	addLuaSprite('citypixelbuldings', false);
	addLuaSprite('NewpixelRAINLayer', false);
        addLuaSprite('citypixelwindow', false);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end