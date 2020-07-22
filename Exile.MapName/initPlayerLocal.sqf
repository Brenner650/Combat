private["_code","_function","_file"];
{
    _code = "";
    _function = _x select 0;
    _file = _x select 1;
    _code = compileFinal (preprocessFileLineNumbers _file);
    missionNamespace setVariable [_function, _code];
}
forEach
[
    ["ExileClient_object_player_event_onFiredMan","addons\fixes\ExileClient_object_player_event_onFiredMan.sqf"]    
];