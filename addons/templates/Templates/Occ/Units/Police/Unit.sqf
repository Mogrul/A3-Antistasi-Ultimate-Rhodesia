private _prefix = "police";

private _unitTypePolice = [
	["SquadLeader", _unitPolice, [], [_prefix]],
	["Standard", _unitPolice, [], [_prefix]]
];

[_prefix, _unitTypePolice, _loadoutPolice] call _fnc_generateAndSaveUnitsToTemplate;