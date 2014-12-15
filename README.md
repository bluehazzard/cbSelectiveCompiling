#cdSelectiveCompiling
cbSelectiveCompiling is a plugin for Code::blocks (http://www.codeblocks.org/)

## What it does:
this plugin is created for two purposes:
* demonstration of the capabilities of the new squirrel scripting engine in the testversion of c::b found here https://github.com/bluehazzard/codeblocks_sf
* a handy tool to compile only the targets and projects you want to compile

## What do you need:
1. a c::b test version with the new scripting capabilities. You can find it here: https://github.com/bluehazzard/codeblocks_sf . You have to compile it for yourself. A instruction to compile c::b can be found on the official c::b wiki
2. this repository ;)

## How to install:
1. compile c::b
2. run "create_test_plugin.bat" from this repository (or download only the ".cbplugin" file from the repository)
2. start c::b and got to "Plugins->Manage plugins->Install new" select the ".cbplugin" file from this repository. The installation will start automatically.


## How to use:
1. open a c::b workspace with multiple projects or a project with multiple targets
2. Go to "Plugins -> Selective Compile"
3. Select the projects and targets you want to compile. Be aware that you have to select the project to compile any target within the project

## Be aware:
* This is the earliest version of this plugin and also the c::b version is not fully tested. There can sleep a lot bugs and ui errors under the hood. If you find some, please report them. 
* This is the first version of the ui. I'm not familiar with the xrc file format of wxWidgets, and I will improve the ui as soon as possible, but for the first testing this should be enough.
* For the unix guys: i will add a bash script soon. Hey, you are a unix guy, open the bat and look what it does, it is really simple to write one for yourself, probably only c&p
