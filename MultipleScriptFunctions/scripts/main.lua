--[[----------------------------------------------------------------------------
   
  Application Name:
  MultipleScriptFunctions

  Summary:
  This sample shows how to use the function Script.startScript to start
  additional scripts within an App and how these scripts can serve and call functions.

  Description:
  The script main.lua starts two additional scripts, ServingFunction.lua and
  CallingFunction.lua. Each scripts runs in its own independent interpreter and
  task context.

  ServingFunction.lua serves a function which is then called by CallingFunction.lua
  periodically.

  Note regarding debugging in AppStudio:
  It is not possible to debug a script that is started with
  the function Script.startScript() in AppStudio directly.

  A possible workaround is to manually change the startScript() call for the
  specific script to be debugged to a require() to make it execute
  directly in the context of the main script of the app.
  
------------------------------------------------------------------------------]]

--Start of Global Scope---------------------------------------------------------

-- Create a new thread and interpreter context which runs ServingFunction.lua.
-- The function blocks until global scope of ServingFunction.lua has run.
Script.startScript("ServingFunction.lua")

-- Create a new thread and interpreter context which runs CallingFunction.lua.
-- The function blocks until global scope of CallingFunction.lua has run.
Script.startScript("CallingFunction.lua")

-- To debug CallingFunction.lua, replace the line above by:
-- require("CallingFunction")

--End of Global Scope-----------------------------------------------------------
