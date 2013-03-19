
//	@file Version: 1.1
//	@file Name: playerActions.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 20/11/2012 05:19
//  @file Modified: 07/12/2012 23:35
//	@file Args:

aActionsIDs = [];

//Pickup Money
aActionsIDs = aActionsIDs + [player addAction["Steal his money!", "client\actions\pickupMoney.sqf", [], 1, false, false, "", 'player distance (nearestobjects [player, ["Land_Sack_F"],  5] select 0) < 5']];

//Cancel action
aActionsIDs = aActionsIDs + [player addAction[("<t color=""#FFFFFF"">Stop doing this!</t>"), "noscript.sqf", 'doCancelAction = true;', 1, false, false, "", 'mutexScriptInProgress']];
