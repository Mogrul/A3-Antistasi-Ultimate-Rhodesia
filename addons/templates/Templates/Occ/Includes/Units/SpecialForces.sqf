// /********************************************************\
// *                       Equipment                        *
// \********************************************************/
// Apparel
private _uniform = [];

private _headgear = [];
private _headgearSquadLeader = [];
private _headgearMedic = [];
private _headgearMarksman = [];
private _headgearSniper = [];

private _vestHeavy = [];
private _vestSquadLeader = [];
private _vestMedic = [];
private _vestMarksman = [];
private _vestSniper = [];

// Extra
private _extraSquadLeader = ["Laserbatteries", "Laserbatteries", "Laserbatteries"];
private _extraExplosiveExpert = ["ToolKit", "MineDetector"];
private _extraMarksman = [];
private _extraSniper = [];
private _extraRifleman = [];
private _extraMedic = [];
private _extraGrenadier = [];
private _extraEngineer = [];
private _extraLightAT = [];
private _extraAT = [];
private _extraAA = [];
private _extraMG = [];

// Utility
private _backpack = [];
private _backpackRadio = [];

private _NVG = [];

// Weapons
private _rifle = [];
private _rifleMarksman = [];
private _rifleSniper = [];
private _carbine = [];
private _MG = [];

private _sidearm = [];

private _launcherGrenade = [];
private _launcherGrenadeDesignated = [];
private _launcherATLight = [];
private _launcherAT = [];
private _launcherMissileAT = [];
private _launcherAA = [];

// /********************************************************\
// *                        Loadout                         *
// \********************************************************/
private _loadoutSF = _loadoutData call _fnc_copyLoadoutData;

// Apparel
_loadoutSF set ["uniform", _uniform];

_loadoutSF set ["headgear", _headgear];
_loadoutSF set ["headgearSquadLeader", _headgearSquadLeader];
_loadoutSF set ["headgearMedic", _headgearMedic];
_loadoutSF set ["headgearMarksman", _headgearMarksman];
_loadoutSF set ["headgearSniper", _headgearSniper];

_loadoutSF set ["vestHeavy", _vestHeavy];
_loadoutSF set ["vestSquadLeader", _vestSquadLeader];
_loadoutSF set ["vestMedic", _vestMedic];
_loadoutSF set ["vestMarksman", _vestMarksman];
_loadoutSF set ["vestSniper", _vestSniper];

// Weapons
_loadoutSF set ["rifle", _rifle];
_loadoutSF set ["carbine", _carbine];

_loadoutSF set ["launcherGrenade", _launcherGrenade];
_loadoutSF set ["launcherGrenadeDesignated", _launcherGrenadeDesignated];

_loadoutSF set ["MG", _MG];
_loadoutSF set ["rifleMarksman", _rifleMarksman];
_loadoutSF set ["rifleSniper", _rifleSniper];

_loadoutSF set ["sidearm", _sidearm];

_loadoutSF set ["launcherATLight", _launcherATLight];
_loadoutSF set ["launcherAT", _launcherAT];
_loadoutSF set ["launcherMissileAT", _launcherMissileAT];
_loadoutSF set ["launcherAA", _launcherAA];

// Role Extras
_loadoutSF set ["extraSquadLeader", _extraSquadLeader];
_loadoutSF set ["extraRifleman", _extraRifleman];
_loadoutSF set ["extraMedic", _extraMedic];
_loadoutSF set ["extraGrenadier", _extraGrenadier];
_loadoutSF set ["extraExplosiveExpert", _extraExplosiveExpert];
_loadoutSF set ["extraEngineer", _extraEngineer];
_loadoutSF set ["extraLightAT", _extraLightAT];
_loadoutSF set ["extraAT", _extraAT];
_loadoutSF set ["extraAA", _extraAA];
_loadoutSF set ["extraMG", _extraMG];
_loadoutSF set ["extraMarksman", _extraMarksman];
_loadoutSF set ["extraSniper", _extraSniper];

// Backpacks
_loadoutSF set ["backpack", _backpack];
_loadoutSF set ["backpackRadio", _backpackRadio];

// Equipment
_loadoutSF set ["NVG", _NVG];

// /********************************************************\
// *                          Unit                          *
// \********************************************************/
private _prefix = "SF";

private _unitSF = [
    ["SquadLeader", _templateSquadLeader, [], [_prefix]],
	["Rifleman", _templateRifleman, [], [_prefix]],
	["Radioman", _templateRadioman, [], [_prefix]],
	["Medic", _templateMedic, [["medic", true]], [_prefix]],
	["Engineer", _templateEngineer, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _templateEE, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _templateGrenadier, [], [_prefix]],
	["LAT", _templateLAT, [], [_prefix]],
	["AT", _templateAT, [], [_prefix]],
	["AA", _templateAA, [], [_prefix]],
	["MachineGunner", _templateMG, [], [_prefix]],
	["Marksman", _templateMarksman, [], [_prefix]],
	["Sniper", _templateSniper, [], [_prefix]]
];

[_prefix, _unitSF, _loadoutSF] call _fnc_generateAndSaveUnitsToTemplate;