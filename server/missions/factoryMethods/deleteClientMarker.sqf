if(!isServer) exitwith {};

private["_markerName"];

_markerName = _this select 0;

//Remove marker from client marker array.
{
    if(_x select 0 == _markerName) then
    {
    	clientMissionMarkers set [_forEachIndex, "REMOVETHISCRAP"];
		clientMissionMarkers = clientMissionMarkers - ["REMOVETHISCRAP"];
        publicVariable "clientMissionMarkers";    
    };
}forEach clientMissionMarkers;