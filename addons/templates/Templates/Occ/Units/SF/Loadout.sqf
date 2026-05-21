#include "Loadout\Ammo.sqf"
#include "Loadout\Apparel.sqf"
#include "Loadout\Extra.sqf"
#include "Loadout\Placeable.sqf"
#include "Loadout\Utility.sqf"
#include "Loadout\Weapons.sqf"

private _loadoutSF = call _fnc_copyLoadoutData;

// Apparel
_loadoutSF set ["glasses", _glasses];
_loadoutSF set ["goggle", _goggle];

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

// Ammo / Grenades
_loadoutSF set ["grenadeAP", _grenadeAP];
_loadoutSF set ["grenadeSmoke", _grenadeSmoke];
_loadoutSF set ["grenadeSignal", _grenadeSignal];

// Medical / Shared Utility
_loadoutSF set ["medicalStandard", _medicalStandard];
_loadoutSF set ["medicalMedic", _medicalMedic];
_loadoutSF set ["extra", _extra];

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
_loadoutSF set ["map", _map];
_loadoutSF set ["watch", _watch];
_loadoutSF set ["compass", _compass];
_loadoutSF set ["radio", _radio];
_loadoutSF set ["binocular", _binocular];
_loadoutSF set ["NVG", _NVG];
_loadoutSF set ["GPS", _GPS];

// Explosives / Mines
_loadoutSF set ["explosiveLight", _explosiveLight];
_loadoutSF set ["explosiveHeavy", _explosiveHeavy];
_loadoutSF set ["mineAT", _mineAT];
_loadoutSF set ["mineAP", _mineAP];