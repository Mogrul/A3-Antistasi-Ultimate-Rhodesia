// /********************************************************\
// *                       Equipment                        *
// \********************************************************/
// Apparel
private _uniform = [];
private _uniformOfficer = [];
private _uniformTraitor = [];

private _headgear = [];
private _headgearSquadLeader = [];
private _headgearMedic = [];
private _headgearMarksman = [];
private _headgearSniper = [];
private _headgearOfficer = [];
private _headgearTraitor = [];

private _vestHeavy = [];
private _vestSquadLeader = [];
private _vestMedic = [];
private _vestMarksman = [];
private _vestSniper = [];
private _vestOfficer = [];
private _vestTraitor = [];

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
private _loadoutMilitary = _loadoutData call _fnc_copyLoadoutData;

// Apparel
_loadoutMilitary set ["uniform", _uniform];
_loadoutMilitary set ["uniformOfficer", _uniformOfficer];
_loadoutMilitary set ["uniformTraitor", _uniformTraitor];

_loadoutMilitary set ["headgear", _headgear];
_loadoutMilitary set ["headgearSquadLeader", _headgearSquadLeader];
_loadoutMilitary set ["headgearMedic", _headgearMedic];
_loadoutMilitary set ["headgearMarksman", _headgearMarksman];
_loadoutMilitary set ["headgearSniper", _headgearSniper];
_loadoutMilitary set ["headgearOfficer", _headgearOfficer];
_loadoutMilitary set ["headgearTraitor", _headgearTraitor];

_loadoutMilitary set ["vestHeavy", _vestHeavy];
_loadoutMilitary set ["vestSquadLeader", _vestSquadLeader];
_loadoutMilitary set ["vestMedic", _vestMedic];
_loadoutMilitary set ["vestMarksman", _vestMarksman];
_loadoutMilitary set ["vestSniper", _vestSniper];

// Weapons
_loadoutMilitary set ["rifle", _rifle];
_loadoutMilitary set ["carbine", _carbine];

_loadoutMilitary set ["launcherGrenade", _launcherGrenade];
_loadoutMilitary set ["launcherGrenadeDesignated", _launcherGrenadeDesignated];

_loadoutMilitary set ["MG", _MG];
_loadoutMilitary set ["rifleMarksman", _rifleMarksman];
_loadoutMilitary set ["rifleSniper", _rifleSniper];

_loadoutMilitary set ["sidearm", _sidearm];

_loadoutMilitary set ["launcherATLight", _launcherATLight];
_loadoutMilitary set ["launcherAT", _launcherAT];
_loadoutMilitary set ["launcherMissileAT", _launcherMissileAT];
_loadoutMilitary set ["launcherAA", _launcherAA];

// Role Extras
_loadoutMilitary set ["extraSquadLeader", _extraSquadLeader];
_loadoutMilitary set ["extraRifleman", _extraRifleman];
_loadoutMilitary set ["extraMedic", _extraMedic];
_loadoutMilitary set ["extraGrenadier", _extraGrenadier];
_loadoutMilitary set ["extraExplosiveExpert", _extraExplosiveExpert];
_loadoutMilitary set ["extraEngineer", _extraEngineer];
_loadoutMilitary set ["extraLightAT", _extraLightAT];
_loadoutMilitary set ["extraAT", _extraAT];
_loadoutMilitary set ["extraAA", _extraAA];
_loadoutMilitary set ["extraMG", _extraMG];
_loadoutMilitary set ["extraMarksman", _extraMarksman];
_loadoutMilitary set ["extraSniper", _extraSniper];

// Backpacks
_loadoutMilitary set ["backpack", _backpack];
_loadoutMilitary set ["backpackRadio", _backpackRadio];

// Equipment
_loadoutMilitary set ["NVG", _NVG];

// Explosives / Mines
_loadoutMilitary set ["explosiveLight", _explosiveLight];
_loadoutMilitary set ["explosiveHeavy", _explosiveHeavy];
_loadoutMilitary set ["mineAT", _mineAT];
_loadoutMilitary set ["mineAP", _mineAP];

// /********************************************************\
// *                          Unit                          *
// \********************************************************/
private _prefix = "military";

private _unitMilitary = [
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

[_prefix, _unitMilitary, _loadoutMilitary] call _fnc_generateAndSaveUnitsToTemplate;

private _prefix = "other";

[_prefix, [["Official", _templateOfficer, [], [_prefix]]], _loadoutMilitary] call _fnc_generateAndSaveUnitsToTemplate;
[_prefix, [["Traitor", _templateTraitor, [], [_prefix]]], _loadoutMilitary] call _fnc_generateAndSaveUnitsToTemplate;
[_prefix, [["Unarmed", _templateUnarmed, [], [_prefix]]], _loadoutMilitary] call _fnc_generateAndSaveUnitsToTemplate;