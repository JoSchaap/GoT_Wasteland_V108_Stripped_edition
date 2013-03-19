if(!isServer) exitwith {};

private["_delayTime","_startTime","_running","_currTime"];

_delayTime = _this select 0;
_startTime = floor(time);
_running = true;

while {_running} do
{ 
    _currTime = floor(time);
    if(_currTime - _startTime >= _delayTime) then {_running = false;};
    sleep 1;
};