## MultipleScriptFunctions
Starting scripts in a new interpreter context within a single App.
### Description
This sample shows how to use the function Script.startScript to start additional scripts within an App and how these scripts can serve and call functions.
The script main.lua starts two additional scripts, ServingFunction.lua and CallingFunction.lua. Each scripts runs in its own independent interpreter and
task context without the need of having multiple Apps. Communication between the scripts is done via served functions and events. 
### How to Run
Minimum AppEngine version: 2.10

### Topics
Programming-Pattern, Sample, SICK-AppSpace
