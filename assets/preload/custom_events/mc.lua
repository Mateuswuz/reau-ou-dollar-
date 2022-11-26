-- thx stilic for the spinning notes script and thx to kingyomoma for showing me how to use timers lmao

local length = 30
local speed = 0.35

local strumsPosX = {}
local strumsPosY = {}


function onCreate()
        makeAnimatedLuaSprite('hh','metal-clank', 50, 0)
        addAnimationByPrefix('hh','dance','clank',26,false)
	setObjectCamera('hh','other')
        if downscroll then
           setProperty('hh.flipY', true)
        end
end

function onEvent(name, value1, value2)
	if name == 'mc' then	
	   addLuaSprite('hh', true);
           objectPlayAnimation('hh','dance',false)
           runTimer('timer', 1.4, 1)
	end
end

function onTimerCompleted(t)
  if t == 'timer' then
           triggerEvent('Screen Shake', '', '0.1, 0.01')
           function onUpdate(elapsed)
               local beat = (getSongPosition() / 2500) * (curBpm / 60)
               for i = 0, getProperty('strumLineNotes.length') - 1 do
                   if strumsPosX[i] == nil then
                       strumsPosX[i] = getPropertyFromGroup('strumLineNotes', i, 'x')
                   end
                   if strumsPosY[i] == nil then
                       strumsPosY[i] = getPropertyFromGroup('strumLineNotes', i, 'y')
                   end

                   local shit = (beat + i * 0.25) * math.pi
                   noteTweenX('coolStrumX' .. i, i,
                   strumsPosX[i] - length * math.sin(shit), speed)
                   noteTweenY('coolStrumY' .. i, i,
                              strumsPosY[i] - length * math.cos(shit), speed)
               end
           end
  end
end