private _prefix = "SF";

private _unitTypeSpecialForces = [
	["SquadLeader", _unitSquadLeader, [], [_prefix]],
	["Rifleman", _unitRifleman, [], [_prefix]],
	["Radioman", _unitRadioman, [], [_prefix]],
	["Medic", _unitMedic, [["medic", true]], [_prefix]],
	["Engineer", _unitEngineer, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _unitEE, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _unitGrenadier, [], [_prefix]],
	["LAT", _unitLAT, [], [_prefix]],
	["AT", _unitAT, [], [_prefix]],
	["AA", _unitAA, [], [_prefix]],
	["MachineGunner", _unitMG, [], [_prefix]],
	["Marksman", _unitMarksman, [], [_prefix]],
	["Sniper", _unitSniper, [], [_prefix]]
];

[_prefix, _unitTypeSpecialForces, _loadoutSpecialForces] call _fnc_generateAndSaveUnitsToTemplate;