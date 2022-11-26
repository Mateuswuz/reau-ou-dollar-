function onCreate()

	makeLuaSprite('bg', 'bg', -500, -300);
	setLuaSpriteScrollFactor('bg', 0.9, 0.9);
	scaleObject('bg', 1.1, 1.1);

	makeAnimatedLuaSprite('behindbopanimated','behindbop',10,50)
        addAnimationByPrefix('behindbopanimated','dance','behindbop',10, false)
        objectPlayAnimation('behindbopanimated','dance',false)
        setScrollFactor('behindbopanimated', 0.9, 0.9);

	addLuaSprite('bg', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);
	addLuaSprite('behindbopanimated', false);

      function onBeatHit()
		objectPlayAnimation('behindbopanimated', 'dance');
      end
end