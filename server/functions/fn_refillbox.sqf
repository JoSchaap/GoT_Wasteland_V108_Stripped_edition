if (!isServer) exitWith {};
private ["_selectedBox", "_selectedBoxPos", "_finishedBox", "_currBox"];

_box = _this select 0;
_selectedBox = _this select 1;

switch(_selectedBox) do {
    case "mission_Side_USLaunchers": { // Used in the airwreck side mission
    	_currBox = _box;

        // Clear prexisting weapons first
        clearMagazineCargoGlobal _currBox;
		clearWeaponCargoGlobal _currBox;

		// Add new weapons before ammunition
		_currBox addWeaponCargoGlobal ["launch_NLAW_F",2];
		_currBox addWeaponCargoGlobal ["launch_RPG32_F",2];
		// Add ammunition
		_currBox addMagazineCargoGlobal ["RPG32_AA_F",5];
		_currBox addMagazineCargoGlobal ["RPG32_F",5];
		_currBox addMagazineCargoGlobal ["NLAW_F",5];
		_currBox addMagazineCargoGlobal ["DemoCharge_Remote_Mag",5];
		_currBox addMagazineCargoGlobal ["APERSMine_Range_Mag",6];
    };
    case "mission_Side_USSpecial": { // Used in the airwreck side mission
    	_currBox = _box;
        
        // Clear prexisting weapons first
        clearMagazineCargoGlobal _currBox;
		clearWeaponCargoGlobal _currBox;
        
        // Add new weapons before ammunition
		_currBox addWeaponCargoGlobal ["LMG_Mk200_F",1];
		_currBox addWeaponCargoGlobal ["arifle_MX_SW_F",1];
		_currBox addWeaponCargoGlobal ["arifle_MXM_F",2];
		_currBox addWeaponCargoGlobal ["srifle_EBR_F",2];
		_currBox addWeaponCargoGlobal ["hgun_P07_F",1];
		_currBox addWeaponCargoGlobal ["hgun_Rook40_F",1];

		_currBox addItemCargoGlobal ["NVGoggles",3];
		_currBox addWeaponCargoGlobal ["Binocular",2];

		_currBox addMagazineCargoGlobal ["16Rnd_9x21_Mag",10];
		_currBox addMagazineCargoGlobal ["20Rnd_762x45_Mag",25];
		_currBox addMagazineCargoGlobal ["100Rnd_65x39_caseless_mag_Tracer",20];
		_currBox addMagazineCargoGlobal ["200Rnd_65x39_cased_Box",20];		
    };
    case "mission_USLaunchers2": { // Used in the some other mission
    	_currBox = _box;

        // Clear prexisting weapons first
        clearMagazineCargoGlobal _currBox;
		clearWeaponCargoGlobal _currBox;

		// Add new weapons before ammunition
		_currBox addWeaponCargoGlobal ["launch_NLAW_F",1];
		_currBox addWeaponCargoGlobal ["launch_RPG32_F",1];
		_currBox addMagazineCargoGlobal ["16Rnd_9x21_Mag",10];
		_currBox addMagazineCargoGlobal ["RPG32_AA_F",5];
		_currBox addMagazineCargoGlobal ["RPG32_F",5];
		_currBox addMagazineCargoGlobal ["NLAW_F",5];
		_currBox addMagazineCargoGlobal ["DemoCharge_Remote_Mag",20];
		_currBox addMagazineCargoGlobal ["APERSMine_Range_Mag",25];
    };
    case "mission_USSpecial2": { // Used in some other mission
    	_currBox = _box;
        
        // Clear prexisting weapons first
        clearMagazineCargoGlobal _currBox;
		clearWeaponCargoGlobal _currBox;
        
        // Add new weapons before ammunition
		_currBox addWeaponCargoGlobal ["arifle_Khaybar_GL_F",3];
		_currBox addWeaponCargoGlobal ["arifle_TRG21_GL_F",3];
		_currBox addWeaponCargoGlobal ["arifle_MX_GL_F",3];
		_currBox addMagazineCargoGlobal ["UGL_FlareWhite_F",10];
		_currBox addMagazineCargoGlobal ["UGL_FlareGreen_F",10];
		_currBox addMagazineCargoGlobal ["UGL_FlareRed_F",10];
		_currBox addMagazineCargoGlobal ["UGL_FlareYellow_F",10];
		_currBox addMagazineCargoGlobal ["UGL_FlareCIR_F",10];
		_currBox addMagazineCargoGlobal ["20Rnd_762x45_Mag",15];
		_currBox addMagazineCargoGlobal ["100Rnd_65x39_caseless_mag_Tracer",10];
		_currBox addMagazineCargoGlobal ["200Rnd_65x39_cased_Box",5];		
    };
};