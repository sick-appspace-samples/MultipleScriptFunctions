
--Start of Global Scope---------------------------------------------------------
--luacheck: globals timer

-- Timer to periodically call function
timer = Timer.create()
Timer.setPeriodic(timer,true)
Timer.setExpirationTime(timer,1000)

--End of Global Scope-----------------------------------------------------------

--Start of Function and Event Scope---------------------------------------------

local function handleOnExpired()
  -- This is the call of the function 'printSomething' from 'ServingFunction'
  MultipleScriptFunctions.ServingFunction.printSomething()
end
Timer.register(timer, "OnExpired", handleOnExpired)

Timer.start(timer)

--End of Function and Event Scope------------------------------------------------


