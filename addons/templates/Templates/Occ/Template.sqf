#include "..\..\script_component.hpp"

["name", "ZANU"] call _fnc_saveToTemplate;
["spawnMarkerName", "ZANU"] call _fnc_saveToTemplate;
["flag", "Flag_R_O"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Asset\Flag_Occ.paa)] call _fnc_saveToTemplate;
["flagMarkerType", "A3U_Rhodesia_Occ_Marker"] call _fnc_saveToTemplate;

// /********************************************************\
// *                     Mod Check Vars                     *
// \********************************************************/
private _hasSNS = isClass (configFile >> "CfgPatches" >> "simc_hillbilly_core");
private _hasTCGMGirls = isClass (configFile >> "CfgPatches" >> "TCGM_Girls");


// /********************************************************\
// *                        Default                         *
// \********************************************************/
["ammobox", "I_supplyCrate_F"] call _fnc_saveToTemplate;
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate;
["equipmentBox", "Box_AAF_Equip_F"] call _fnc_saveToTemplate;



// /********************************************************\
// *                        Vehicle                         *
// \********************************************************/
#include "Includes\Vehicles.sqf"



// /********************************************************\
// *                        Identity                        *
// \********************************************************/
private _face = [
    "AfricanHead_01",
    "AfricanHead_02",
    "AfricanHead_03"
];
private _voice = [
    "Male01PER",
    "Male02PER",
    "Male03PER"
];
private _insignia = [];
private _insigniaMil = [];

if (_hasTCGMGirls) then {
    #include "..\Common\Modded\TCGM\Identity_Occ.sqf"
};

["faces", _face] call _fnc_saveToTemplate;
["voices", _voice] call _fnc_saveToTemplate;
["insignia", _insignia] call _fnc_saveToTemplate;
["milInsignia", _insigniaMil] call _fnc_saveToTemplate;



// /********************************************************\
// *                         Units                          *
// \********************************************************/
// Pre-reqs
#include "Includes\UnitTypes.sqf"
#include "Includes\LoadoutCommon.sqf"

// Units
#include "Includes\Units\Elite.sqf"
#include "Includes\Units\SpecialForces.sqf"
#include "Includes\Units\Military.sqf"
#include "Includes\Units\Militia.sqf"

#include "Includes\Units\Police.sqf"
#include "Includes\Units\Misc.sqf"