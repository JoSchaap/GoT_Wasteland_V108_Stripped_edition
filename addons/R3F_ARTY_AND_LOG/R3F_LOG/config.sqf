/****** TOW WITH VEHICLE / REMORQUER AVEC VEHICULE ******/

/**
 * List of class names of (ground or air) vehicles which can tow towables objects.
 * Liste des noms de classes des vçhicules terrestres pouvant remorquer des objets remorquables.
 */
R3F_LOG_CFG_remorqueurs = [
	"c_offroad",
	"O_Ifrit_MG_F",
    "B_Hunter_F",
    "B_Hunter_RCWS_F",
    "B_Hunter_HMG_F",
    "O_Ifrit_F",
    "O_Ifrit_GMG_F"
];

/**
 * List of class names of towables objects.
 * Liste des noms de classes des objets remorquables.
 */
R3F_LOG_CFG_objets_remorquables = [
	"c_offroad",
	"O_Ifrit_MG_F",
    "B_Hunter_F",
    "B_Hunter_RCWS_F",
    "B_Hunter_HMG_F",
    "O_Ifrit_F",
    "O_Ifrit_GMG_F"
];

/****** LIFT WITH VEHICLE / HELIPORTER AVEC VEHICULE ******/

/**
 * List of class names of air vehicles which can lift liftables objects.
 * Liste des noms de classes des vçhicules açriens pouvant hçliporter des objets hçliportables.
 */
R3F_LOG_CFG_heliporteurs = [
	"O_Ka60_Unarmed_F",
	"B_MH9_F",
	"O_Ka60_F",
	"B_AH9_F"
];

/**
 * List of class names of liftables objects.
 * Liste des noms de classes des objets hçliportables.
 */
R3F_LOG_CFG_objets_heliportables = [

	"c_offroad",
	"O_Ifrit_MG_F",
    "B_Hunter_F",
    "B_Hunter_RCWS_F",
    "B_Hunter_HMG_F",
    "O_Ifrit_F",
    "O_Ifrit_GMG_F"
];


/****** LOAD IN VEHICLE / CHARGER DANS LE VEHICULE ******/

/*
 * This section use a quantification of the volume and/or weight of the objets.
 * The arbitrary referencial used is : an ammo box of type USVehicleBox "weights" 12 units.
 * 
 * Note : the priority of a declaration of capacity to another corresponds to their order in the tables.
 *   For example : the "Truck" class is in the "Car" class (see http://community.bistudio.com/wiki/ArmA_2:_CfgVehicles).
 *   If "Truck" is declared with a capacity of 140 before "Car". And if "Car" is declared after "Truck" with a capacity of 40,
 *   Then all the sub-classes in "Truck" will have a capacity of 140. And all the sub-classes of "Car", excepted the ones
 *   in "Truck", will have a capacity of 40.
 */

/**
 * List of class names of (ground or air) vehicles which can transport transportables objects.
 * The second element of the arrays is the load capacity (in relation with the capacity cost of the objects).
 */
R3F_LOG_CFG_transporteurs = [
	["c_offroad", 30],
	["O_Ifrit_MG_F", 20],
	["B_Hunter_F", 20],
	["B_Hunter_RCWS_F", 20],
	["B_Hunter_HMG_F", 20],
	["O_Ifrit_F", 20],
	["O_Ifrit_GMG_F", 20],
	["O_Ka60_Unarmed_F", 10],
	["B_MH9_F", 10],
	["O_Ka60_F", 10],
    ["O_Quadbike_F", 5],
    ["B_Quadbike_F", 5],
	["B_AH9_F", 10]
];

/**
 * List of class names of transportables objects.
 * The second element of the arrays is the cost capacity (in relation with the capacity of the vehicles).
 */
 
R3F_LOG_CFG_objets_transportables =  [
	["Box_East_Support_F", 5],
	["Box_East_Wps_F", 5],
	["Box_East_WpsSpecial_F", 5],
	["Box_NATO_Support_F", 5],
	["Box_NATO_Wps_F", 5],
	["Box_NATO_WpsSpecial_F", 5],
    ["O_Quadbike_F", 10],
    ["B_Quadbike_F", 10]
];

/****** MOVABLE-BY-PLAYER OBJECTS / OBJETS DEPLACABLES PAR LE JOUEUR ******/

/**
 * List of class names of objects moveables by player.
 * Liste des noms de classes des objets transportables par le joueur.
 */

R3F_LOG_CFG_objets_deplacables = [
	"Box_NATO_Support_F",
	"Box_East_Support_F",
	"Box_East_WpsSpecial_F",
	"Box_East_Wps_F",
	"Box_NATO_Wps_F",
	"Box_NATO_WpsSpecial_F"
];
