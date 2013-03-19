#define modMenu_option 50005
disableSerialization;

private ["_start","_panelOptions","_displayMod","_modSelect"];
_uid = getPlayerUID player;
if ((_uid in moderators) OR (_uid in administrators) OR (_uid in serverAdministrators)) then {
	_start = createDialog "ModMenu";
	
	_displayMod = uiNamespace getVariable "ModMenu";
	_modSelect = _displayMod displayCtrl modMenu_option;
	
	_panelOptions = ["Player Menu",
					"Vehicle Management"
	];
	
	{
		_modSelect lbAdd _x;
	} forEach _panelOptions;
} else {
  exit;  
};