## MultipleScriptFunctions

Starting scripts in a new interpreter context within a single App.

### Description

This sample shows how to use the function Script.startScript to start additional scripts within an App and how these scripts can serve and call functions.
The script main.lua starts two additional scripts, ServingFunction.lua and CallingFunction.lua. Each scripts runs in its own independent interpreter and
task context without the need of having multiple Apps. Communication between the scripts is done via served functions and events.

Then running the app the ServingFunction.lua serves a function which is then called by CallingFunction.lua
periodically.

It must be noted, that when a function is called, the caller script is
blocked until the function execution is finished. If a function should be executed
simultaneously  it is necessary to serve and register to events instead of directly
calling functions.

To make the Function accessible the function must be served also
in the App Properties (right-click on App -> Properties -> Serves)

Note regarding debugging in AppStudio:
It is not possible to debug a script that is started with
the function Script.startScript() in AppStudio directly.

A possible workaround is to manually change the startScript() call for the
specific script to be debugged to a require() to make it execute
directly in the context of the main script of the app.

### How to Run

Minimum AppEngine version: 2.10

### Topics

programming-pattern, sample, sick-appspace



