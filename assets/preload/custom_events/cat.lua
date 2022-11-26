function onCreate()
        makeAnimatedLuaSprite('cat','cassiesymbol', 0, 0)
        addAnimationByPrefix('cat','dance','cassie ding',14,false)
	setObjectCamera('cat','other')
	scaleObject('cat', 0.7, 0.7);
end

function onEvent(name, value1, value2)
	if name == 'cat' then	
	   addLuaSprite('cat', true);
           objectPlayAnimation('cat','dance',false)
	end
end