private _prefix = "other";

private _unitTypeMiscCrew = [
    ["Crew", _unitCrew, [], [_prefix]]
];
private _unitTypeMiscPilot = [
    ["Pilot", _unitCrew, [], [_prefix]]
];
private _unitTypeMiscOfficial = [
    ["Official", _unitOfficer, [], [_prefix]]
];
private _unitTypeMiscTraitor = [
    ["Traitor", _unitTraitor, [], [_prefix]]
];
private _unitTypeMiscUnarmed = [
    ["Unarmed", _unitUnarmed, [], [_prefix]]
];

[_prefix, _unitTypeMiscCrew, _loadoutMiscCrew] call _fnc_generateAndSaveUnitsToTemplate;
[_prefix, _unitTypeMiscPilot, _loadoutMiscPilot] call _fnc_generateAndSaveUnitsToTemplate;
[_prefix, _unitTypeMiscOfficial, _loadoutMilitary] call _fnc_generateAndSaveUnitsToTemplate;
[_prefix, _unitTypeMiscTraitor, _loadoutMilitary] call _fnc_generateAndSaveUnitsToTemplate;
[_prefix, _unitTypeMiscUnarmed, _loadoutMilitary] call _fnc_generateAndSaveUnitsToTemplate;