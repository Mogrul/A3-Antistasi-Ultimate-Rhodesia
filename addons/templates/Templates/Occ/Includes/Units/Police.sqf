// /********************************************************\
// *                       Equipment                        *
// \********************************************************/
// Apparel
private _uniform = [];
private _vest = [];
private _headgear = [];
private _headgearSquadLeader = [];

// Extra
private _extraPolice = [];
private _extraSquadLeader = [];

// Weapons
private _SMG = [];
private _rifle = [];
private _carbine = [];
private _sidearm = [];

// /********************************************************\
// *                        Loadout                         *
// \********************************************************/
private _loadoutPolice = _loadoutData call _fnc_copyLoadoutData;

// Apparel
_loadoutPolice set ["uniform", _uniform];
_loadoutPolice set ["headgear", _headgear];
_loadoutPolice set ["headgearSquadLeader", _headgearSquadLeader];
_loadoutPolice set ["vest", _vest];

// Weapons
_loadoutPolice set ["rifle", _rifle];
_loadoutPolice set ["SMG", _SMG];
_loadoutPolice set ["carbine", _carbine];

// Role Extras
_loadoutPolice set ["extraPolice", _extraPolice];
_loadoutPolice set ["extraSquadLeader", _extraSquadLeader];

// /********************************************************\
// *                          Unit                          *
// \********************************************************/
private _prefix = "police";

private _unitPolice = [
    ["SquadLeader", _templatePoliceSquadLeader, [], [_prefix]],
    ["Standard", _templatePolice, [], [_prefix]]
];

[_prefix, _unitPolice, _loadoutPolice] call _fnc_generateAndSaveUnitsToTemplate;