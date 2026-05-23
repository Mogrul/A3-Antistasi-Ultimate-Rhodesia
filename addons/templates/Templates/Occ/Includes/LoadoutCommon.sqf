// /********************************************************\
// *                       Equipment                        *
// \********************************************************/
// Apparel
private _glasses = [];
private _goggle = [];

// Ammo
private _grenadeAP = [];
private _grenadeSmoke = [];
private _grenadeSignal = [];

// Extra
private _extra = [] call A3A_fnc_itemset_miscEssentials;

// Placeable
private _explosiveLight = [];
private _explosiveHeavy = [];

private _mineAT = [];
private _mineAP = [];

// Utility
private _medicalStandard = ["STANDARD"] call A3A_fnc_itemset_medicalSupplies;
private _medicalMedic = ["MEDIC"] call A3A_fnc_itemset_medicalSupplies;

private _map = [];
private _watch = [];
private _compass = [];
private _radio = [];
private _GPS = [];
private _binocular = [];

// /********************************************************\
// *                        Loadout                         *
// \********************************************************/
private _loadoutCommon = call _fnc_createLoadoutData;

// Apparel
_loadoutCommon set ["glasses", _glasses];
_loadoutCommon set ["goggle", _goggle];

// Ammo
_loadoutCommon set ["grenadeAP", _grenadeAP];
_loadoutCommon set ["grenadeSmoke", _grenadeSmoke];
_loadoutCommon set ["grenadeSignal", _grenadeSignal];

// Medical \ Shared Utility
_loadoutCommon set ["medicalStandard", _medicalStandard];
_loadoutCommon set ["medicalMedic", _medicalMedic];
_loadoutCommon set ["extra", _extra];

// Equipment
_loadoutCommon set ["map", _map];
_loadoutCommon set ["watch", _watch];
_loadoutCommon set ["compass", _compass];
_loadoutCommon set ["radio", _radio];
_loadoutCommon set ["GPS", _GPS];
_loadoutCommon set ["binocular", _binocular];

// Placeable
_loadoutCommon set ["explosiveLight", _explosiveLight];
_loadoutCommon set ["explosiveHeavy", _explosiveHeavy];
_loadoutCommon set ["mineAT", _mineAT];
_loadoutCommon set ["mineAP", _mineAP];