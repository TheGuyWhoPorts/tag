function onCreate()
	-- background shit
	makeLuaSprite('citybuildingsnightskysky', 'citybuildingsnightskysky', -850, -1000);
	setScrollFactor('citybuildingsnightskysky', 0.9, 0.9);
	scaleObject('citybuildingsnightskysky', 2.2, 2.2);
	
	makeAnimatedLuaSprite('NewRainLayer01','NewRainLayer01', -650, 10)
    luaSpriteAddAnimationByPrefix('NewRainLayer01', 'idle', 'RainFirstlayer instance 1', 24, true);
    setLuaSpriteScrollFactor('NewRainLayer01', 0,4, 1);
	scaleObject('NewRainLayer01', 3, 3);
	
	makeLuaSprite('citybuilding', 'citybuilding', -850, -1000);
	setScrollFactor('citybuilding', 0.9, 0.9);
	scaleObject('citybuilding', 2.2, 2.2);
    
	makeLuaSprite('citystagewindow', 'citystagewindow', -550, -1000);
	setScrollFactor('citystagewindow', 0.9, 0.9);
	scaleObject('citystagewindow', 2.2, 2.2);

	makeLuaSprite('citystagemetalroomhousething', 'citystagemetalroomhousething', -750, -1000);
	setScrollFactor('citystagemetalroomhousething', 0.9, 0.9);
	scaleObject('citystagemetalroomhousething', 2.2, 2.2);
    
	

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		
	end

	addLuaSprite('citybuildingsnightskysky', false);
	addLuaSprite('NewRainLayer01', false);
        addLuaSprite('citybuilding', false);
        addLuaSprite('citystagewindow', false);
        addLuaSprite('citystagemetalroomhousething', false);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end