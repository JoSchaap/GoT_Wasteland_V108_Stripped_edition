#define adminMenu_option 50001
disableSerialization;

private ["_start","_panelOptions","_adminSelect","_displayAdmin"];
_uid = getPlayerUID player;
if ((_uid in moderators) OR (_uid in administrators) OR (_uid in serverAdministrators)) then {
	_start = createDialog "AdminMenu";
	
	_displayAdmin = uiNamespace getVariable "AdminMenu";
	_adminSelect = _displayAdmin displayCtrl adminMenu_option;
	
	_panelOptions = ["Player Menu",
					"Vehicle Management"
	];
	
	{
		_adminSelect lbAdd _x;
	} forEach _panelOptions;
} else {
  exit;  
};