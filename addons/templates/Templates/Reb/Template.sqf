#include "..\..\script_component.hpp"

["name", format [localize "STR_A3UE_params_Rhodesia_RebName", "Rhodesia"]] call _fnc_saveToTemplate;
["flag", "Flag_R_R"] call _fnc_saveToTemplate;
["flagMarkerType", "Flag_R_R"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Asset\Flag_Reb.paa)] call _fnc_saveToTemplate;



// /********************************************************\
// *                        Vehicle                         *
// \********************************************************/
// Military
private _vehicleBasic = [];
private _vehicleUnarmed = [];
private _vehicleArmed = [];
private _vehicleTruck = [];
private _vehicleAT = [];
private _vehicleAA = [];
private _vehicleBoat = [];
private _vehiclePlane = [];
private _vehicleMedical = [];

// Civilian
private _vehicleCivBasic = [];
private _vehicleCivTruck = [];
private _vehicleCivHeli = [];
private _vehicleCivBoat = [];
private _vehicleCivPlane = [];
private _vehicleCivSupply = [];

// Static
private _staticMG = [];
private _staticAT = [];
private _staticAA = [];
private _staticMortar = ["I_G_Mortar_01_F"];
private _staticMortarHE = "8Rnd_82mm_Mo_shells";
private _staticMortarSmoke = "8Rnd_82mm_Mo_Smoke_white";

// Placeables
private _mineAT = ["ATMine_Range_Mag", "SLAMDirectionalMine_Wire_Mag"];
private _mineAP = ["ClaymoreDirectionalMine_Remote_Mag","APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag", "APERSTripMine_Wire_Mag"];

// Breachers
private _breachExplosiveAPC = [["DemoCharge_Remote_Mag", 1]];
private _breachExplosiveTank = [["SatchelCharge_Remote_Mag", 1], ["DemoCharge_Remote_Mag", 2]];



["vehiclesBasic", _vehicleBasic] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", _vehicleUnarmed] call _fnc_saveToTemplate;
["vehiclesLightArmed", _vehicleArmed] call _fnc_saveToTemplate;
["vehiclesTruck", _vehicleTruck] call _fnc_saveToTemplate;
["vehiclesAT", _vehicleAT] call _fnc_saveToTemplate;
["vehiclesAA", _vehicleAA] call _fnc_saveToTemplate;
["vehiclesBoat", _vehicleBoat] call _fnc_saveToTemplate;
["vehiclesPlane", _vehiclePlane] call _fnc_saveToTemplate;
["vehiclesMedical", _vehicleMedical] call _fnc_saveToTemplate;

["vehiclesCivCar", _vehicleCivBasic] call _fnc_saveToTemplate;
["vehiclesCivTruck", _vehicleCivTruck] call _fnc_saveToTemplate;
["vehiclesCivHeli", _vehicleCivHeli] call _fnc_saveToTemplate;
["vehiclesCivBoat", _vehicleCivBoat] call _fnc_saveToTemplate;
["vehiclesCivPlane", _vehicleCivPlane] call _fnc_saveToTemplate;
["vehiclesCivSupply", _vehicleCivSupply] call _fnc_saveToTemplate;

["staticMGs", _staticMG] call _fnc_saveToTemplate;
["staticAT", _staticAT] call _fnc_saveToTemplate;
["staticAA", _staticAA] call _fnc_saveToTemplate;
["staticMortars", _staticMortar] call _fnc_saveToTemplate;
["staticMortarMagHE", _staticMortarHE] call _fnc_saveToTemplate;
["staticMortarMagSmoke", _staticMortarSmoke] call _fnc_saveToTemplate;

["minesAT", _mineAT] call _fnc_saveToTemplate;
["minesAPERS", _mineAP] call _fnc_saveToTemplate;

["breachingExplosivesAPC", _breachExplosiveAPC] call _fnc_saveToTemplate;
["breachingExplosivesTank", _breachExplosiveTank] call _fnc_saveToTemplate;



// /********************************************************\
// *                       Equipment                        *
// \********************************************************/
// Military
private _equipmentGun = [];
private _equipmentAmmo = [];
private _equipmentUniform = [];
private _equipmentHeadgear = [];
private _equipmentVest = [];
private _equipmentFacewear = [];

// Civilian
private _equipmentCivUniform = [];
private _equipmentCivHeadgear = [];
private _equipmentCivFacewear = [];

// Unit Equipment
private _equipmentUnitUniform = [];
private _equipmentUnitHeadgear = [];
private _equipmentUnitFacewear = [];



["initialRebelEquipment", 
    _equipmentGun
    + _equipmentAmmo
    + _equipmentUniform
    + _equipmentHeadgear
    + _equipmentVest
    + _equipmentHeadgear
    + _equipmentCivUniform
    + _equipmentCivHeadgear
    + _equipmentCivFacewear
] call _fnc_saveToTemplate;

["uniforms", _equipmentUnitUniform] call _fnc_saveToTemplate;
["headgear", _equipmentUnitHeadgear] call _fnc_saveToTemplate;



// /********************************************************\
// *                        Loadout                         *
// \********************************************************/
private _loadout = call _fnc_createLoadoutData;

_loadout set ["maps", ["ItemMap"]];
_loadout set ["watches", ["ItemWatch"]];
_loadout set ["compasses", ["ItemCompass"]];
_loadout set ["binoculars", ["Binocular"]];
_loadout set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadout set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadout set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadout set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

_loadout set ["uniforms", _equipmentUnitUniform];
_loadout set ["facewear", _equipmentUnitFacewear];



// /********************************************************\
// *                       Unit Type                        *
// \********************************************************/
private _squadLeader = {
    ["uniforms"] call _fnc_setUniform;
    ["facewear"] call _fnc_setFacewear;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["binoculars"] call _fnc_addBinoculars;
};

private _rifleman = {
    ["uniforms"] call _fnc_setUniform;
    ["facewear"] call _fnc_setFacewear;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};



// /********************************************************\
// *                          Unit                          *
// \********************************************************/
private _unit = [
    ["Petros", _squadLeader],
    ["SquadLeader", _squadLeader],
    ["Rifleman", _rifleman],
    ["staticCrew", _rifleman],
    ["Medic", _rifleman, [["medic", true]]],
    ["Engineer", _rifleman, [["engineer", true]]],
    ["ExplosivesExpert", _rifleman, [["explosiveSpecialist", true]]],
    ["Grenadier", _rifleman],
    ["LAT", _rifleman],
    ["AT", _rifleman],
    ["AA", _rifleman],
    ["MachineGunner", _rifleman],
    ["Marksman", _rifleman],
    ["Sniper", _rifleman],
    ["Unarmed", _rifleman]
];

["militia", _unit, _loadout] call _fnc_generateAndSaveUnitsToTemplate;
