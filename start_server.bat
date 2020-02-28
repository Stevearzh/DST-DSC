# put this file under "\Steam\steamapps\common\Don't Starve Together Dedicated Server\bin\scripts"

@ECHO OFF

cd ..
start "Don't Starve Together Overworld" /D "%~dp0.." "%~dp0..\dontstarve_dedicated_server_nullrenderer.exe" -cluster Cluster_1 -shard Master -console
start "Don't Starve Together Caves"     /D "%~dp0.." "%~dp0..\dontstarve_dedicated_server_nullrenderer.exe" -cluster Cluster_1 -shard Caves -console
