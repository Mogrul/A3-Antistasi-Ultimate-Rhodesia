#include "..\..\script_component.hpp"

["name", "ZANU"] call _fnc_saveToTemplate;
["spawnMarkerName", "ZANU"] call _fnc_saveToTemplate;
["flag", "Flag_R_O"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Asset\Flag_Occ.paa)] call _fnc_saveToTemplate;
["flagMarkerType", "A3U_Rhodesia_Occ_Marker"] call _fnc_saveToTemplate;



// /********************************************************\
// *                        Default                         *
// \********************************************************/
["ammobox", "I_supplyCrate_F"] call _fnc_saveToTemplate;
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate;
["equipmentBox", "Box_AAF_Equip_F"] call _fnc_saveToTemplate;



// /********************************************************\
// *                        Vehicle                         *
// \********************************************************/
// Military
private _vehicleBasic = [];
private _vehicleUnarmed = [];
private _vehicleArmed = [];
private _vehicleTruck = [];
private _vehicleTruckCargo = [];
private _vehicleTruckAmmo = [];
private _vehicleTruckRepair = [];
private _vehicleTruckFuel = [];
private _vehicleMedical = [];
private _vehicleAPC = [];
private _vehicleAPCLight = [];
private _vehicleTank = [];
private _vehicleAA = [];
private _vehicleIFV = [];

private _vehicleBoatTransport = [];
private _vehicleBoatGun = [];
private _vehicleBoatAmphibious = [];

private _vehiclePlaneCAS = [];
private _vehiclePlaneAA = [];
private _vehiclePlaneTransport = [];

private _vehicleHeliLight = [];
private _vehicleHeliTransport = [];
private _vehicleHeliLightAttack = [];
private _vehicleHeliAttack = [];

private _vehicleArtillery = [];

private _vehicleAmmo = [];

private _vehicleUAVAttack = [];
private _vehicleUAVPortable = [];

["vehiclesBasic", _vehicleBasic] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", _vehicleUnarmed] call _fnc_saveToTemplate;
["vehiclesLightArmed", _vehicleArmed] call _fnc_saveToTemplate;
["vehiclesTrucks", _vehicleTruck] call _fnc_saveToTemplate;
["vehiclesCargoTrucks", _vehicleTruckCargo] call _fnc_saveToTemplate;
["vehiclesAmmoTrucks", _vehicleTruckAmmo] call _fnc_saveToTemplate;
["vehiclesRepairTrucks", _vehicleTruckRepair] call _fnc_saveToTemplate;
["vehiclesFuelTrucks", _vehicleTruckFuel] call _fnc_saveToTemplate;
["vehiclesMedical", _vehicleMedical] call _fnc_saveToTemplate;
["vehiclesAPCs", _vehicleAPC] call _fnc_saveToTemplate;
["vehiclesLightAPCs", _vehicleAPCLight] call _fnc_saveToTemplate;
["vehiclesTanks", _vehicleTank] call _fnc_saveToTemplate;
["vehiclesAA", _vehicleAA] call _fnc_saveToTemplate;
["vehiclesIFVs", _vehicleIFV] call _fnc_saveToTemplate;

["vehiclesTransportBoats", _vehicleBoatTransport] call _fnc_saveToTemplate;
["vehiclesGunBoats", _vehicleBoatGun] call _fnc_saveToTemplate;
["vehiclesAmphibious", _vehicleBoatAmphibious] call _fnc_saveToTemplate;

["vehiclesPlanesCAS", _vehiclePlaneCAS] call _fnc_saveToTemplate;
["vehiclesPlanesAA", _vehiclePlaneAA] call _fnc_saveToTemplate;
["vehiclesPlanesTransport", _vehiclePlaneTransport] call _fnc_saveToTemplate;

["vehiclesHelisLight", _vehicleHeliLight] call _fnc_saveToTemplate;
["vehiclesHelisTransport", _vehicleHeliTransport] call _fnc_saveToTemplate;
["vehiclesHelisLightAttack", _vehicleHeliLightAttack] call _fnc_saveToTemplate;
["vehiclesHelisAttack", _vehicleHeliAttack] call _fnc_saveToTemplate;




// Militia
private _vehicleMilitiaBasic = [];
private _vehicleMilitiaArmed = [];
private _vehicleMilitiaTruck = [];
private _vehicleMilitiaAPC = [];

["vehiclesMilitiaLightArmed", _vehicleMilitiaArmed] call _fnc_saveToTemplate;
["vehiclesMilitiaTrucks", _vehicleMilitiaTruck] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", _vehicleMilitiaBasic] call _fnc_saveToTemplate;
["vehiclesMilitiaAPCs", _vehicleMilitiaAPC] call _fnc_saveToTemplate;



// Police
private _vehiclePoliceBasic = [];

["vehiclesPolice", _vehiclePoliceBasic] call _fnc_saveToTemplate;




// Static
private _staticMG = [];
private _staticAT = [];
private _staticAA = [];
private _staticMortar = [];
private _staticHowitzer = [];

private _staticMortarHE = [];
private _staticMortarSmoke = [];
private _staticMortarFlare = [];
private _staticHowitzerHE = [];

["staticMGs", _staticMG] call _fnc_saveToTemplate;
["staticAT", _staticAT] call _fnc_saveToTemplate;
["staticAA", _staticAA] call _fnc_saveToTemplate;
["staticMortars", _staticMortar] call _fnc_saveToTemplate;
["staticHowitzers", _staticHowitzer] call _fnc_saveToTemplate;

["mortarMagazineHE", _staticMortarHE] call _fnc_saveToTemplate;
["mortarMagazineSmoke", _staticMortarSmoke] call _fnc_saveToTemplate;
["mortarMagazineFlare", _staticMortarFlare] call _fnc_saveToTemplate;
["howitzerMagazineHE", _staticHowitzerHE] call _fnc_saveToTemplate;



// Placeable
private _mineAT = [];
private _mineAP = [];

["minefieldAT", _mineAT] call _fnc_saveToTemplate;
["minefieldAPERS", _mineAP] call _fnc_saveToTemplate;



// Animations
private _vehicleAnim = [];

["animations", _vehicleAnim] call _fnc_saveToTemplate;



// /********************************************************\
// *                        Identity                        *
// \********************************************************/
private _face = [
    "AfricanHead_01"
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

["faces", _face] call _fnc_saveToTemplate;
["voices", _voice] call _fnc_saveToTemplate;
["insignia", _insignia] call _fnc_saveToTemplate;
["milInsignia", _insigniaMil] call _fnc_saveToTemplate;



// /********************************************************\
// *                        Loadout                         *
// \********************************************************/
#include "Units\SF\Loadout.sqf"


// /********************************************************\
// *                       Unit Type                        *
// \********************************************************/
// Parents
private _unitParent = {
    // Normal units use the same primary weapon.

    // Apparel
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggle", 0.5]] call _fnc_setFacewear;
    ["uniform"] call _fnc_setUniform;

    // Weapon
    [selectRandom ["rifle", "carbine"]] call _fnc_setPrimary;
    ["sidearm"] call _fnc_addHandgun;

    // Ammo
    ["grenadeAP", 2] call _fnc_addItemSet;
    ["grenadeSmoke", 2] call _fnc_addItemSet;
    ["handgun", 2] call _fnc_addMagazines;
    ["primary", 6] call _fnc_addMagazines;

    // Utility / Extras
    ["medicalStandard"] call _fnc_addItemSet;
    ["extra"] call _fnc_addItemSet;

    ["map"] call _fnc_addMap;
    ["watch"] call _fnc_addWatch;
    ["compass"] call _fnc_addCompass;
    ["radio"] call _fnc_addRadio;
    ["binocular"] call _fnc_addBinoculars;
    ["NVG"] call _fnc_addNVGs;
};
private _unitSpecialised = {
    // Specialised units use different primary weapons.

    // Apparel
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggle", 0.5]] call _fnc_setFacewear;
    ["uniform"] call _fnc_setUniform;

    // Weapon
    ["sidearm"] call _fnc_addHandgun;

    // Ammo
    ["grenadeAP", 2] call _fnc_addItemSet;
    ["grenadeSmoke", 2] call _fnc_addItemSet;
    ["handgun", 2] call _fnc_addMagazines;

    // Utility / Extras
    ["medicalStandard"] call _fnc_addItemSet;
    ["extra"] call _fnc_addItemSet;

    ["map"] call _fnc_addMap;
    ["watch"] call _fnc_addWatch;
    ["compass"] call _fnc_addCompass;
    ["radio"] call _fnc_addRadio;
    ["binocular"] call _fnc_addBinoculars;
    ["NVG"] call _fnc_addNVGs;
};

// Children
private _unitSquadLeader = {
    call _unitParent;

    // Apparel
    ["headgearSquadLeader"] call _fnc_setHelmet;
    ["vestSquadLeader"] call _fnc_setVest;

    // Weapon
    ["grenadeSignal", 2] call _fnc_addItemSet;

    // Utility / Extras
    ["extraSquadLeader"] call _fnc_addItemSet;

    ["GPS"] call _fnc_addGPS;
};
private _unitRifleman = {
    call _unitParent;

    // Apparel
    ["headgear"] call _fnc_setHelmet;
    [["vestHeavy", "vest"] _fnc_fallback] call _fnc_setVest;

    // Utility / Extras
    ["extraRifleman"] call _fnc_addItemSet;
};
private _unitRadioman = {
    call _unitParent;

    // Apparel
    ["headgear"] call _fnc_setHelmet;
    [["vestHeavy", "vest"] _fnc_fallback] call _fnc_setVest;

    // Utility / Extras
    ["backpackRadio"] call _fnc_setBackpack;
    ["extraRifleman"] call _fnc_addItemSet;
};
private _unitMedic = {
    call _unitParent;

    // Apparel
    [["headgearMedic", "headgear"] call _fnc_fallback] call _fnc_setHelmet;
    [["vestMedic", "vest"] call _fnc_fallback] call _fnc_setVest;

    // Utility / Extras
    ["medicalMedic"] call _fnc_addItemSet;
    ["extraMedic"] call _fnc_addItemSet;
};
private _unitGrenadier = {
    call _unitParent;

    // Apparel
    ["headgear"] call _fnc_setHelmet;
    [["vestHeavy", "vest"] _fnc_fallback] call _fnc_setVest;

    // Weapon
    [["launcherGrenadeDesignated", "launcherGrenade"] call _fnc_fallback] call _fnc_setPrimary;

    // Ammo
    ["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

    // Utility / Extras
    ["backpack"] call _fnc_setBackpack;
    ["extraGrenadier"] call _fnc_addItemSet;
};
private _unitEE = {
    call _unitParent;

    // Apparel
    ["headgear"] call _fnc_setHelmet;
    [["vestHeavy", "vest"] _fnc_fallback] call _fnc_setVest;

    // Utility / Extras
    ["backpack"] call _fnc_setBackpack;
    ["extraExplosiveExpert"] call _fnc_addItemSet;

    // Placeables
    ["explosiveLight", 2] call _fnc_addItem;
    if (random 1 > 0.5) then {["explosiveHeavy", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["mineAT", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["mineAP", 1] call _fnc_addItem;};
};
private _unitEngineer = {
    call _unitParent;

    // Apparel
    ["headgear"] call _fnc_setHelmet;
    [["vestHeavy", "vest"] _fnc_fallback] call _fnc_setVest;

    // Utility / Extras
    ["backpack"] call _fnc_setBackpack;
    ["extraEngineer"] call _fnc_addItemSet;

    // Placeables
    if (random 1 > 0.5) then {["explosiveLight", 1] call _fnc_addItem;};
};
private _unitLAT = {
    call _unitParent;

    // Apparel
    ["headgear"] call _fnc_setHelmet;
    [["vestHeavy", "vest"] _fnc_fallback] call _fnc_setVest;

    // Weapon
    [["launcherATLight", "launcherAT"] call _fnc_fallback] call _fnc_setLauncher;

    // Ammo
    ["launcher", 3] call _fnc_addMagazines;

    // Utility / Extras
    ["backpack"] call _fnc_setBackpack;
    ["extraLightAT"] call _fnc_addItemSet;
};
private _unitAT = {
    call _unitParent;

    // Apparel
    ["headgear"] call _fnc_setHelmet;
    [["vestHeavy", "vest"] _fnc_fallback] call _fnc_setVest;

    // Weapon
    [selectRandom ["launcherAT", "launcherMissileAT"]] call _fnc_setLauncher;

    // Ammo
    ["launcher", 3] call _fnc_addMagazines;

    // Utility / Extras
    ["backpack"] call _fnc_setBackpack;
    ["extraAT"] call _fnc_addItemSet;
};
private _unitAA = {
    call _unitParent;

    // Apparel
    ["headgear"] call _fnc_setHelmet;
    [["vestHeavy", "vest"] _fnc_fallback] call _fnc_setVest;

    // Weapon
    ["launcherAA"] call _fnc_setLauncher;

    // Ammo
    ["launcher", 3] call _fnc_addMagazines;

    // Utility / Extras
    ["backpack"] call _fnc_setBackpack;
    ["extraAA"] call _fnc_addItemSet;
};
private _unitMG = {
    call _unitSpecialised;

    // Apparel
    ["headgear"] call _fnc_setHelmet;
    [["vestHeavy", "vest"] _fnc_fallback] call _fnc_setVest;

    // Weapon
    ["MG"] call _fnc_setPrimary;

    // Ammo
    ["primary", 4] call _fnc_addMagazines;

    // Utility / Extras
    ["backpack"] call _fnc_setBackpack;
    ["extraMG"] call _fnc_addItemSet;
};
private _unitMarksman = {
    call _unitSpecialised;

    // Apparel
    [["headgearMarksman", "headgear"] _fnc_fallback] call _fnc_setHelmet;
    [["vestMarksman", "vest"] _fnc_fallback] call _fnc_setVest;

    // Weapon
    ["rifleMarksman"] call _fnc_setPrimary;

    // Ammo
    ["primary", 6] call _fnc_addMagazines;

    // Utility / Extras
    ["extraMarksman"] call _fnc_addItemSet;
};
private _unitSniper = {
    call _unitSpecialised;

    // Apparel
    [["headgearSniper", "headgear"] _fnc_fallback] call _fnc_setHelmet;
    [["vestSniper", "vest"] _fnc_fallback] call _fnc_setVest;

    // Weapon
    ["rifleSniper"] call _fnc_setPrimary;

    // Ammo
    ["primary", 6] call _fnc_addMagazines;

    // Utility / Extras
    ["extraSniper"] call _fnc_addItemSet;
};
private _unitPolice = {
    // Apparel
    ["headgearPolice"] call _fnc_setHelmet;
    ["vestPolice"] call _fnc_setVest;
    ["uniformPolice"] call _fnc_setUniform;

    // Weapon
    ["SMG"] call _fnc_setPrimary;
    ["sidearm"] call _fnc_addHandgun;

    // Ammo
    ["primary", 3] call _fnc_addMagazines;
    ["handgun", 2] call _fnc_addMagazines;

    // Utility / Extras
    ["medicalStandard"] call _fnc_addItemSet;
    ["extraPolice"] call _fnc_addItemSet;
    ["extra"] call _fnc_addItemSet;
    ["grenadeSmoke", 1] call _fnc_addItem;

    ["map"] call _fnc_addMap;
    ["watch"] call _fnc_addWatch;
    ["compass"] call _fnc_addCompass;
    ["radio"] call _fnc_addRadio;
};
private _unitCrew = {
    // Apparel
    ["headgearCrew"] call _fnc_setHelmet;
    ["vestCrew"] call _fnc_setVest;
    ["uniformCrew"] call _fnc_setUniform;

    // Weapon
    ["SMG"] call _fnc_setPrimary;
    ["sidearm"] call _fnc_addHandgun;

    // Utility / Extras
    ["medicalStandard"] call _fnc_addItemSet;
    ["extraCrew"] call _fnc_addItemSet;
    ["extra"] call _fnc_addItemSet;
    ["grenadeSmoke", 2] call _fnc_addItem;

    ["map"] call _fnc_addMap;
    ["watch"] call _fnc_addWatch;
    ["compass"] call _fnc_addCompass;
    ["radio"] call _fnc_addRadio;
};
private _unitUnarmed = {
    // Apparel
    ["vest"] call _fnc_setVest;
    ["uniform"] call _fnc_setUniform;

    // Utility / Extras
    ["medicalStandard"] call _fnc_addItemSet;
    ["extraUnarmed"] call _fnc_addItemSet;
    ["extra"] call _fnc_addItemSet;

    ["map"] call _fnc_addMap;
    ["watch"] call _fnc_addWatch;
    ["compass"] call _fnc_addCompass;
    ["radio"] call _fnc_addRadio;
};
private _unitTraitor = {
    // Apparel
    ["uniformTraitor"] call _fnc_setUniform;
    ["vestTraitor"] call _fnc_setVest;
    ["headgearTraitor"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;

    // Weapon
    ["sidearm"] call _fnc_addHandgun;

    // Ammo
    ["handgun", 3] call _fnc_addMagazines;

    // Utility / Extras
    ["medicalStandard"] call _fnc_addItemSet;
    ["extraTraitor"] call _fnc_addItemSet;
    ["extra"] call _fnc_addItemSet;

    ["map"] call _fnc_addMap;
    ["watch"] call _fnc_addWatch;
    ["compass"] call _fnc_addCompass;
    ["radio"] call _fnc_addRadio;
};
private _unitOfficer = {
    // Apparel
    ["headgearOfficer"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
    ["vestOfficer"] call _fnc_setVest;
    ["uniformOfficer"] call _fnc_setUniform;

    // Weapon
    ["SMG"] call _fnc_setPrimary;
    ["sidearm"] call _fnc_addHandgun;

    // Ammo
    ["primary", 3] call _fnc_addMagazines;
    ["handgun", 2] call _fnc_addMagazines;

    // Utility / Extras
    ["medicalStandard"] call _fnc_addItemSet;
    ["extraOfficer"] call _fnc_addItemSet;
    ["extra"] call _fnc_addItemSet;

    ["map"] call _fnc_addMap;
    ["watch"] call _fnc_addWatch;
    ["compass"] call _fnc_addCompass;
    ["radio"] call _fnc_addRadio;
};



// /********************************************************\
// *                          Unit                          *
// \********************************************************/
#include "Units\SF\Unit.sqf"