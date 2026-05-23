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
private _loadoutElite = _loadoutData call _fnc_copyLoadoutData;

// Apparel
_loadoutElite set ["uniform", _uniform];

_loadoutElite set ["headgear", _headgear];
_loadoutElite set ["headgearSquadLeader", _headgearSquadLeader];
_loadoutElite set ["headgearMedic", _headgearMedic];
_loadoutElite set ["headgearMarksman", _headgearMarksman];
_loadoutElite set ["headgearSniper", _headgearSniper];

_loadoutElite set ["vestHeavy", _vestHeavy];
_loadoutElite set ["vestSquadLeader", _vestSquadLeader];
_loadoutElite set ["vestMedic", _vestMedic];
_loadoutElite set ["vestMarksman", _vestMarksman];
_loadoutElite set ["vestSniper", _vestSniper];

// Weapons
_loadoutElite set ["rifle", _rifle];
_loadoutElite set ["carbine", _carbine];

_loadoutElite set ["launcherGrenade", _launcherGrenade];
_loadoutElite set ["launcherGrenadeDesignated", _launcherGrenadeDesignated];

_loadoutElite set ["MG", _MG];
_loadoutElite set ["rifleMarksman", _rifleMarksman];
_loadoutElite set ["rifleSniper", _rifleSniper];

_loadoutElite set ["sidearm", _sidearm];

_loadoutElite set ["launcherATLight", _launcherATLight];
_loadoutElite set ["launcherAT", _launcherAT];
_loadoutElite set ["launcherMissileAT", _launcherMissileAT];
_loadoutElite set ["launcherAA", _launcherAA];

// Role Extras
_loadoutElite set ["extraSquadLeader", _extraSquadLeader];
_loadoutElite set ["extraRifleman", _extraRifleman];
_loadoutElite set ["extraMedic", _extraMedic];
_loadoutElite set ["extraGrenadier", _extraGrenadier];
_loadoutElite set ["extraExplosiveExpert", _extraExplosiveExpert];
_loadoutElite set ["extraEngineer", _extraEngineer];
_loadoutElite set ["extraLightAT", _extraLightAT];
_loadoutElite set ["extraAT", _extraAT];
_loadoutElite set ["extraAA", _extraAA];
_loadoutElite set ["extraMG", _extraMG];
_loadoutElite set ["extraMarksman", _extraMarksman];
_loadoutElite set ["extraSniper", _extraSniper];

// Backpacks
_loadoutElite set ["backpack", _backpack];
_loadoutElite set ["backpackRadio", _backpackRadio];

// Equipment
_loadoutElite set ["NVG", _NVG];


// /********************************************************\
// *                          Unit                          *
// \********************************************************/
private _prefix = "elite";

private _unitElite = [
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

[_prefix, _unitElite, _loadoutElite] call _fnc_generateAndSaveUnitsToTemplate;