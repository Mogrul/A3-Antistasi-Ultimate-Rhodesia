// /********************************************************\
// *                       Equipment                        *
// \********************************************************/
// Apparel
private _uniform = [];
private _vest = [];
private _headgear = [];

// Extra
private _extraCrew = [];

// Weapons
private _SMG = [];
private _sidearm = [];

// /********************************************************\
// *                        Loadout                         *
// \********************************************************/
private _loadoutCrew = _loadoutData call _fnc_copyLoadoutData;

_loadoutCrew set ["uniform", _uniform];
_loadoutCrew set ["vest", _vest];
_loadoutCrew set ["headgear", _headgear];

_loadoutCrew set ["SMG", _SMG];
_loadoutCrew set ["sidearm", _sidearm];

_loadoutCrew set ["extraCrew", _extraCrew];

// /********************************************************\
// *                          Unit                          *
// \********************************************************/
private _prefix = "other";

private _unitCrew = [
    ["Crew", _templateCrew, [], [_prefix]]
];

[_prefix, _unitCrew, _loadoutCrew] call _fnc_generateAndSaveUnitsToTemplate;

private _unitPilot = [
    ["Pilot", _templateCrew, [], [_prefix]]
];

[_prefix, _unitPilot, _loadoutCrew] call _fnc_generateAndSaveUnitsToTemplate;