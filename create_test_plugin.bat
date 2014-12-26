@echo off

echo deleting old files
del /q SelectiveCompiling.cbplugin

echo copy files
copy /Y TestScriptPlugin/install.xml resources/install.xml
copy /Y TestScriptPlugin/manifest.xml resources/manifest.xml


echo Compressing Resources
zip -jqu9 SelectiveCompiling.zip resources/*
zip -jqu9 tmp_SelectiveCompiling.zip TestScriptPlugin/* 
zip -jqu9 tmp_SelectiveCompiling.zip SelectiveCompiling.zip

echo rename files
ren tmp_SelectiveCompiling.zip SelectiveCompiling.cbplugin

echo deleting temp files
del /q SelectiveCompiling.zip
del /q tmp_SelectiveCompiling.zip

