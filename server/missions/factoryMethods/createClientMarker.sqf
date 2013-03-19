if(!isServer) exitwith {};

private["_markerName","_randomPos","_markerText"];

_markerName = _this select 0;
_randomPos = _this select 1;
_markerText = _this select 2;

clientMissionMarkers set [count clientMissionMarkers,[_markerName,_randomPos,_markerText]];
publicVariable "clientMissionMarkers";