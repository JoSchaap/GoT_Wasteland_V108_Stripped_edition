#include "setup.sqf"

if(!X_Server) exitWith {};

diag_log format["WASTELAND SERVER - Initilizing Server Compile"];

//Main Mission Compiles
mission_ArmedHeli = compile preprocessFileLineNumbers "server\missions\mainMissions\mission_ArmedHeli.sqf";
mission_CivHeli = compile preprocessFileLineNumbers "server\missions\mainMissions\mission_CivHeli.sqf";
mission_LightArmVeh = compile preprocessFileLineNumbers "server\missions\mainMissions\mission_LightArmVeh.sqf";
mission_Convoy = compile preprocessFileLineNumbers "server\missions\mainMissions\mission_Convoy.sqf";

//Side Mission Compiles
mission_AirWreck = compile preprocessFileLineNumbers "server\missions\sideMissions\mission_AirWreck.sqf";
mission_WepCache = compile preprocessFileLineNumbers "server\missions\sideMissions\mission_WepCache.sqf";

//Factory Compiles
createMissionLocation = compile preprocessFileLineNumbers "server\missions\factoryMethods\createMissionLocation.sqf";
createClientMarker = compile preprocessFileLineNumbers "server\missions\factoryMethods\createClientMarker.sqf";
createWaitCondition = compile preprocessFileLineNumbers "server\missions\factoryMethods\createWaitCondition.sqf";
deleteClientMarker = compile preprocessFileLineNumbers "server\missions\factoryMethods\deleteClientMarker.sqf";
createSmallGroup = compile preprocessFileLineNumbers "server\missions\factoryMethods\createUnits\smallGroup.sqf";
createMidGroup = compile preprocessFileLineNumbers "server\missions\factoryMethods\createUnits\midGroup.sqf";
createRandomSoldier = compile preprocessFileLineNumbers "server\missions\factoryMethods\createUnits\createRandomSoldier.sqf";
createMissionVehicle = compile preprocessFileLineNumbers "server\missions\factoryMethods\createMissionVehicle.sqf";
defendArea = compile preprocessFileLineNumbers "server\functions\defendArea.sqf";

//Spawning Compiles
randomWeapons = compile preprocessFileLineNumbers "server\spawning\randomWeapon.sqf";
vehicleCreation = compile preprocessFileLineNumbers "server\spawning\vehicleCreation.sqf";
staticHeliCreation = compile preprocessFileLineNumbers "server\spawning\staticHeliCreation.sqf";
fn_refillbox = compile preprocessFileLineNumbers "server\functions\fn_refillbox.sqf";

//Player Management
server_playerDied = compile preprocessFileLineNumbers "server\functions\serverPlayerDied.sqf";
