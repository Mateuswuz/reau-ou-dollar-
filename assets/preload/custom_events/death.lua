function onCreate()
        makeAnimatedLuaSprite('h','death',0,0)
        addAnimationByPrefix('h','dance','UA',20,false)
	setObjectCamera('h','other')
	scaleObject('h', 1.2, 1.2);
end

function onEvent(name, value1, value2)
	if name == 'death' then	
	   addLuaSprite('h', true);
           objectPlayAnimation('h','dance',false)
	end
end