
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
