/**
 * ExileClient_object_player_event_onFiredMan
 *
 * © 2020 MGTDB
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */

private["_vehicle"];
_vehicle = _this select 7;
if!(ExilePlayerInSafezone) then
{
	if ((_vehicle isKindOf "LandVehicle") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Boat")) then
	{
		ExileClientPlayerIsInCombat = true;
		ExileClientPlayerLastCombatAt = diag_tickTime;
		true call ExileClient_gui_hud_toggleCombatIcon;
	};
};
true