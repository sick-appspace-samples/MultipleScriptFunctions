--[[----------------------------------------------------------------------------

  Description:
  This script serves a function which can be called from another script. The call is
  shown in 'CallingFunction.lua'.

  To make the Function accessible the function must be served also
  in the App Properties (right-click on App -> Properties -> Serves)

  It must be noted, that when a function is called, the caller script is
  blocked until the function execution is finished. If a function should be executed
  simultaneously  it is necessary to serve and register to events instead of directly
  calling functions.

------------------------------------------------------------------------------]]

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
