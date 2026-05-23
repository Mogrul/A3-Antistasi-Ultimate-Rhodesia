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
private _loadoutMilitia = _loadoutData call _fnc_copyLoadoutData;

// Apparel
_loadoutMilitia set ["uniform", _uniform];

_loadoutMilitia set ["headgear", _headgear];
_loadoutMilitia set ["headgearSquadLeader", _headgearSquadLeader];
_loadoutMilitia set ["headgearMedic", _headgearMedic];
_loadoutMilitia set ["headgearMarksman", _headgearMarksman];
_loadoutMilitia set ["headgearSniper", _headgearSniper];

_loadoutMilitia set ["vestHeavy", _vestHeavy];
_loadoutMilitia set ["vestSquadLeader", _vestSquadLeader];
_loadoutMilitia set ["vestMedic", _vestMedic];
_loadoutMilitia set ["vestMarksman", _vestMarksman];
_loadoutMilitia set ["vestSniper", _vestSniper];

// Weapons
_loadoutMilitia set ["rifle", _rifle];
_loadoutMilitia set ["carbine", _carbine];

_loadoutMilitia set ["launcherGrenade", _launcherGrenade];
_loadoutMilitia set ["launcherGrenadeDesignated", _launcherGrenadeDesignated];

_loadoutMilitia set ["MG", _MG];
_loadoutMilitia set ["rifleMarksman", _rifleMarksman];
_loadoutMilitia set ["rifleSniper", _rifleSniper];

_loadoutMilitia set ["sidearm", _sidearm];

_loadoutMilitia set ["launcherATLight", _launcherATLight];
_loadoutMilitia set ["launcherAT", _launcherAT];
_loadoutMilitia set ["launcherMissileAT", _launcherMissileAT];
_loadoutMilitia set ["launcherAA", _launcherAA];

// Role Extras
_loadoutMilitia set ["extraSquadLeader", _extraSquadLeader];
_loadoutMilitia set ["extraRifleman", _extraRifleman];
_loadoutMilitia set ["extraMedic", _extraMedic];
_loadoutMilitia set ["extraGrenadier", _extraGrenadier];
_loadoutMilitia set ["extraExplosiveExpert", _extraExplosiveExpert];
_loadoutMilitia set ["extraEngineer", _extraEngineer];
_loadoutMilitia set ["extraLightAT", _extraLightAT];
_loadoutMilitia set ["extraAT", _extraAT];
_loadoutMilitia set ["extraAA", _extraAA];
_loadoutMilitia set ["extraMG", _extraMG];
_loadoutMilitia set ["extraMarksman", _extraMarksman];
_loadoutMilitia set ["extraSniper", _extraSniper];

// Backpacks
_loadoutMilitia set ["backpack", _backpack];
_loadoutMilitia set ["backpackRadio", _backpackRadio];

// Equipment
_loadoutMilitia set ["NVG", _NVG];

// /********************************************************\
// *                          Unit                          *
// \********************************************************/
private _prefix = "militia";

private _unitMilitia = [
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

[_prefix, _unitMilitia, _loadoutMilitia] call _fnc_generateAndSaveUnitsToTemplate;