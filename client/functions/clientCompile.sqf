// Event handlers
onRespawn = compile preprocessfile "client\clientEvents\onRespawn.sqf";
onKilled = compile preprocessfile "client\clientEvents\onKilled.sqf";
onKeyPress = compile preprocessFile "client\clientEvents\onKeyPress.sqf";

// Player details and actions
loadPlayerMenu = compile preprocessFile "client\systems\playerMenu\init.sqf";
playerSpawn = compile preprocessFileLineNumbers "client\functions\playerSpawn.sqf";
playerSetup = compile preprocessFileLineNumbers "client\functions\playerSetup.sqf";
spawnAction = compile preprocessFileLineNumbers "client\functions\spawnAction.sqf";
refuelVehicle = compile preprocessFileLineNumbers "client\systems\playerMenu\refuel.sqf";
repairVehicle = compile preprocessFile "client\systems\playerMenu\repair.sqf";

// Sync client with server time
timeSync = compile preprocessFileLineNumbers "client\functions\clientTimeSync.sqf";
serverMessage = compile preprocessFileLineNumbers "client\functions\serverMessage.sqf";

// Update scripts
updateMissionsMarkers = compile preprocessFileLineNumbers "client\functions\updatePlayerMissionMarkers.sqf";
updateRadarMarkers = compile preprocessFileLineNumbers "client\functions\updatePlayerRadarMarkers.sqf";
updateTeamKiller = compile preprocessFileLineNumbers "client\functions\updateTeamKiller.sqf";

// Team-kill system
teamkillAction = compile preprocessFileLineNumbers "client\functions\doTeamKillAction.sqf";
teamkillMessage = compile preprocessFileLineNumbers "client\functions\showTeamKillMessage.sqf";

// Dialog compiles
client_respawnDialog = compile preprocessFileLineNumbers "client\functions\loadRespawnDialog.sqf";
loadGunStore = compile preprocessFileLineNumbers "client\systems\gunStore\loadGunStore.sqf";

player groupChat "GoT Wasteland 1.08(D)Stripped - Client Compile Complete";
sleep 1;
playerCompiledScripts = true;