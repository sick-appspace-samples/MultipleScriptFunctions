
--Start of Global Scope----------------------------------------------------------

local counter = 0

--End of Global Scope-----------------------------------------------------------

--Start of Function and Event Scope---------------------------------------------

-- This is the function which then can be called from other apps
local function printSomething()
  counter = counter + 1
  print('This function "printSomething" is called from CallingFunction.lua ' .. counter .. ' times')
end
-- Serving the function 'printSomething' from this script.
-- Function must also be served in the App Properties.
Script.serveFunction('MultipleScriptFunctions.ServingFunction.printSomething', printSomething)

--End of Function and Event Scope------------------------------------------------
