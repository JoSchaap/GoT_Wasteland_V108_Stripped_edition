#define debugMenu_option 50003
disableSerialization;

private ["_start","_panelOptions","_debugSelect","_displayDebug"];
_uid = getPlayerUID player;
if ((_uid in moderators) OR (_uid in administrators) OR (_uid in serverAdministrators)) then {
	_start = createDialog "DebugMenu";
	
	_displayDebug = uiNamespace getVariable "DebugMenu";
	_debugSelect = _displayDebug displayCtrl debugMenu_option;
	
	_panelOptions = ["Access Gun Store",
					"Access Respawn Dialog",
					"Access Proving Grounds",
	                "Show Server FPS"
	];
	
	{
		_debugSelect lbAdd _x;
	} forEach _panelOptions;
} else {
  exit;  
};