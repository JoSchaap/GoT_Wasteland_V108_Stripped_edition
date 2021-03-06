#define serverAdminMenu_option 50007
#define modMenu_option 50005
#define debugMenu_option 50003
#define adminMenu_option 50001
disableSerialization;

private ["_panelType","_displayAdmin","_displayMod","_displayServerAdmin","_displayDebug","_modSelect","_adminSelect","_serverAdminSelect","_debugSelect"];
_uid = getPlayerUID player;
if ((_uid in moderators) OR (_uid in administrators) OR (_uid in serverAdministrators)) then {
	_panelType = _this select 0;
	
	_displayAdmin = uiNamespace getVariable "AdminMenu";
	_displayMod = uiNamespace getVariable "ModMenu";
	_displayServerAdmin = uiNamespace getVariable "ServerAdminMenu";
	_displayDebug = uiNamespace getVariable "DebugMenu";
	
	_modSelect = _displayMod displayCtrl modMenu_option;
	_adminSelect = _displayAdmin displayCtrl adminMenu_option;
	_serverAdminSelect = _displayServerAdmin displayCtrl serverAdminMenu_option;
	_debugSelect = _displayDebug displayCtrl debugMenu_option;
	
	switch (_panelType) do
	{
	    case 0: //Moderator panel
		{
			switch (lbCurSel _modSelect) do
			{
			    case 0: //Player Menu
				{
	                closeDialog 0;
					execVM "client\systems\adminPanel\playerMenu.sqf";
				};
				case 1: //Basic Vehicle Menu
				{
					closeDialog 0;
					execVM "client\systems\adminPanel\vehicleManagement.sqf";
				};
			};
		};
		case 1: //Administrator panel
		{
			switch (lbCurSel _adminSelect) do
			{
			    case 0: //Player Menu
				{
	                closeDialog 0;
					execVM "client\systems\adminPanel\playerMenu.sqf";
				};
				case 1: //Full Vehicle Management
				{
	                closeDialog 0;
					execVM "client\systems\adminPanel\vehicleManagement.sqf";
				};
			};
		};
	    case 2: //Server Administrator panel
	    {
			switch (lbCurSel _serverAdminSelect) do
			{
			    case 0: //Player Menu
				{
	                closeDialog 0;
					execVM "client\systems\adminPanel\playerMenu.sqf";
				};
				case 1: //Full Vehicle Management
				{
	                closeDialog 0;
					execVM "client\systems\adminPanel\vehicleManagement.sqf";
				};
			    case 2: //Teleport
			    {
	                closeDialog 0;    
	                hint "Click on map to teleport";
	                onMapSingleClick "vehicle player setPos _pos; onMapSingleClick '';true;";
			    };
	            case 3: //Money
			    {      
					player setVariable["cmoney", (player getVariable "cmoney")+200,true];
			    };
	            case 4: //Debug Menu
			    {   
	            	closeDialog 0;   
	                execVM "client\systems\adminPanel\loadDebugMenu.sqf";
			    };
			};
	    };
	    case 3: //Debug panel
	    {      
			switch (lbCurSel _debugSelect) do
			{
			    case 0: //Access Gun Store
				{
	                closeDialog 0;
					execVM "client\systems\gunStore\loadGunStore.sqf";
				};
			    case 1: //Access Respawn Dialog
			    {
	                closeDialog 0;
					true spawn client_respawnDialog;
			    };
			    case 2: //Access Proving Grounds
			    {
	                closeDialog 0;      
					createDialog "balca_debug_main";
			    };
	            case 3: //Restart Function
			    {      
					hint format["Server FPS: %1",serverFPS];
			    };
	            case 4: //Test Function
			    {
                    _group = createGroup civilian;
					_leader = _group createunit ["C_man_polo_1_F", getPos player, [], 0.5, "Form"];
                    
					_leader addMagazine "RPG32_F";
					_leader addWeapon "launch_RPG32_F";
					_leader addMagazine "30Rnd_65x39_case_mag";
					_leader addWeapon "arifle_TRG20_F";
			    };
			};		
	    };
	};
} else {
  exit;  
};