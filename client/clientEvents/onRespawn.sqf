private["_player","_corpse","_town","_spawn","_temp"];
playerSetupComplete = false;

_player = (_this select 0) select 0;
_corpse = (_this select 0) select 1;
_corpse removeAction playerMenuId;
{
	_corpse removeAction _x;
} forEach aActionsIDs;

player call playerSetup;
waitUntil {playerSetupComplete};

[] execVM "client\clientEvents\onMouseWheel.sqf";

true spawn playerSpawn;

[] spawn {
	waitUntil{respawnDialogActive};
	waitUntil{sleep 0.1; !respawnDialogActive};

	if(!isNull pvar_PlayerTeamKiller) then {
		pDialogTeamkiller = pvar_PlayerTeamKiller;
		pvar_PlayerTeamKiller = objNull;

		[] execVM "client\functions\createTeamKillDialog.sqf";
	};
};
