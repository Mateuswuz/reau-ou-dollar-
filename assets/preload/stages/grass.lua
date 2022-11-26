function onCreate()
	-- background shit

	makeLuaSprite('bg', 'bg', -500, -300);
	setLuaSpriteScrollFactor('bg', 0.9, 0.9);
	scaleObject('bg', 1.1, 1.1);

	makeAnimatedLuaSprite('behindbopanimated2','behindbop2',10,50)addAnimationByPrefix('behindbopanimated2','dance','behindbop',24,false)
    objectPlayAnimation('behindbopanimated2','dance',false)
    setScrollFactor('behindbopanimated2', 0.9, 0.9);

	makeAnimatedLuaSprite('frontbopanimated','frontbop',-260,549)addAnimationByPrefix('frontbopanimated','dance','frontbop',24,false)
    objectPlayAnimation('frontbopanimated','dance',false)
    setScrollFactor('frontbopanimated', 0.4, 0);
	scaleObject('frontbopanimated', 1.1, 1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

	end

	addLuaSprite('bg', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);
	addLuaSprite('behindbopanimated2', false);
	addLuaSprite('frontbopanimated', true);


      function onBeatHit()
		objectPlayAnimation('frontbopanimated', 'dance');
		objectPlayAnimation('behindbopanimated2', 'dance');
      end
end