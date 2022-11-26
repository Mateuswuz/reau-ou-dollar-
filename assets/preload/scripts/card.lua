function onCreate()
        if isStoryMode then
        makeLuaSprite('bgg', 'bg', 0, 0)
        setObjectCamera('bgg', 'hud'); 
        addLuaSprite('bgg')
        end
end

function onCountdownTick(counter)
    if counter == 0 then

        doTweenAlpha('bgg', 'bgg', 0, 1, 'linear');

        makeLuaSprite('bl', 'blac', 0, 0)
        scaleObject('bl', 2, 2)
        setObjectCamera('bl', 'other'); 
        addLuaSprite('bl', true)

        makeLuaSprite('card', 'cards/' ..songName, 0, 780)
        setObjectCamera('card', 'other'); 
        addLuaSprite('card', true)

	doTweenY('MoveInONE', 'card', 0, 1, 'CircInOut')
	
	runTimer('JukeBoxWait', 3, 1)
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'JukeBoxWait' then
             doTweenAlpha('drd', 'card', 0, 1, 'linear');
             removeLuaSprite('bl', true)
        end
end



