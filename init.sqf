#include "setup.sqf"

StartProgress = false;
enableSaving[false,false];

X_Server = false;
X_Client = false;
X_JIP = false;
hitStateVar = false;
versionName = "v1.08 [Stripped/minimal] (GoT/JoSchaap)";

if(isServer) then { X_Server = true;};
if(!isDedicated) then { X_Client = true;};
if(isNull player) then {X_JIP = true;};

true spawn {
	if(!isDedicated) then {
		titleText ["Please wait for your player to setup", "BLACK", 0];
		waitUntil {player == player};
		client_initEH = player addEventHandler ["Respawn", {removeAllWeapons (_this select 0);}];
	};
};

//init Wasteland Core
[] execVM "config.sqf";
[] execVM "briefing.sqf";

if(X_Client) then {
	waitUntil {player == player};

	//Wipe Group.
	if(count units group player > 1) then
	{  
		diag_log "Player Group Wiped";
		[player] join grpNull;    
	};

	[] execVM "client\init.sqf";
};

if(X_Server) then {
	diag_log format ["############################# %1 #############################", missionName];
    diag_log format["WASTELAND SERVER - Initilizing Server"];
	[] execVM "server\init.sqf";
};

//init 3rd Party Scripts
[] execVM "addons\R3F_ARTY_AND_LOG\init.sqf";
[] execVM "addons\proving_Ground\init.sqf";
