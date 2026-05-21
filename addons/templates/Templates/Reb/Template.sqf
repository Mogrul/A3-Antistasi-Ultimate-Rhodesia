#include "..\..\script_component.hpp"

["name", format [localize "STR_A3UE_Rhodesia_Templates_Reb_Name", "Rhodesia"]] call _fnc_saveToTemplate;
["flag", "Flag_R_R"] call _fnc_saveToTemplate;
["flagMarkerType", "A3U_Rhodesia_Reb_Marker"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Asset\Flag_Reb.paa)] call _fnc_saveToTemplate;



// /********************************************************\
// *                     DLC Check Vars                     *
// \********************************************************/
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasArtOfWar = "aow" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;
private _hasKart = "kart" in A3A_enabledDLC;



// /********************************************************\
// *                     Mod Check Vars                     *
// \********************************************************/
private _hasSNS = isClass (configFile >> "CfgPatches" >> "simc_hillbilly_core");
private _hasTCGM = isClass (configFile >> "CfgPatches" >> "TCGM_Girls");



// /********************************************************\
// *                        Vehicle                         *
// \********************************************************/
// Military
private _vehicleBasic = ["B_G_Quadbike_01_F"];
private _vehicleUnarmed = ["B_G_Offroad_01_F"];
private _vehicleArmed = ["B_G_Offroad_01_armed_F"];
private _vehicleTruck = ["I_Truck_02_transport_F", "I_Truck_02_covered_F"];
private _vehicleAT = ["B_G_Offroad_01_AT_F"];
private _vehicleAA = [];
private _vehicleBoat = ["B_G_Boat_Transport_01_F"];
private _vehiclePlane = [];
private _vehicleMedical = [];

// Civilian
private _vehicleCivBasic = ["C_Hatchback_01_F", "C_Hatchback_01_sport_F", "C_Offroad_01_F"];
private _vehicleCivTruck = ["C_Truck_02_transport_F", "C_Van_01_transport_F"];
private _vehicleCivHeli = ["C_Heli_Light_01_civil_F"];
private _vehicleCivBoat = ["C_Boat_Civil_01_F", "C_Rubberboat"];
private _vehicleCivPlane = [];
private _vehicleCivSupply = ["C_Truck_02_fuel_F", "C_Van_01_box_F", "C_Van_01_fuel_F"];

// Static
private _staticMG = ["B_G_HMG_02_high_F"];
private _staticAT = ["B_static_AT_F"];
private _staticAA = ["B_static_AA_F"];
private _staticMortar = ["I_G_Mortar_01_F"];
private _staticMortarHE = "8Rnd_82mm_Mo_shells";
private _staticMortarSmoke = "8Rnd_82mm_Mo_Smoke_white";

// Placeables
private _mineAT = ["ATMine_Range_Mag", "SLAMDirectionalMine_Wire_Mag"];
private _mineAP = ["ClaymoreDirectionalMine_Remote_Mag", "APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag", "APERSTripMine_Wire_Mag"];

// Breachers
private _breachExplosiveAPC = [["DemoCharge_Remote_Mag", 1]];
private _breachExplosiveTank = [["SatchelCharge_Remote_Mag", 1], ["DemoCharge_Remote_Mag", 2]];



if (_hasContact) then {
    _vehicleCivBasic append ["C_Offroad_01_comms_F", "C_Offroad_01_covered_F", "C_Tractor_01_F"];
};
if (_hasApex) then {
    _vehicleCivBasic append ["C_Offroad_02_unarmed_F"];
    _vehicleCivPlane append ["C_Plane_Civil_01_F", "C_Plane_Civil_01_racing_F"];
};
if (_hasLawsOfWar) then {
    _vehicleMedical append ["C_Van_02_medevac_F"];
    _vehicleCivBasic append ["C_Van_02_vehicle_F", "C_Van_02_transport_F"];
    _vehicleCivSupply append ["C_Van_02_service_F"];
};
if (_hasKart) then {
    _vehicleCivBasic append ["C_Kart_01_F", "C_Kart_01_Fuel_F", "C_Kart_01_Blu_F", "C_Kart_01_Red_F", "C_Kart_01_Vrana_F"];
};



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
// *                   Vehicle Attribute                    *
// \********************************************************/
private _vehicleAttribute = [
    // Military
    ["B_G_Quadbike_01_F", ["rebCost", 200]],
    ["B_G_Offroad_01_F", ["rebCost", 500]],
    ["B_G_Offroad_01_armed_F", ["rebCost", 1000]],
    ["I_Truck_02_transport_F", ["rebCost", 700]],
    ["I_Truck_02_covered_F", ["rebCost", 700]],
    ["B_G_Offroad_01_AT_F", ["rebCost", 1500]],
    ["B_G_Boat_Transport_01_F", ["rebCost", 500]],

    // Civilian
    ["C_Hatchback_01_F", ["rebCost", 300]],
    ["C_Hatchback_01_sport_F", ["rebCost", 500]],
    ["C_Offroad_01_F", ["rebCost", 500]],
    ["C_Truck_02_transport_F", ["rebCost", 700]],
    ["C_Van_01_transport_F", ["rebCost", 700]],
    ["C_Heli_Light_01_civil_F", ["rebCost", 2000]],
    ["C_Boat_Civil_01_F", ["rebCost", 600]],
    ["C_Rubberboat", ["rebCost", 200]],
    ["C_Truck_02_fuel_F", ["rebCost", 2000]],
    ["C_Van_01_box_F", ["rebCost", 1000]],
    ["C_Van_01_fuel_F", ["rebCost", 2000]],

    // Static
    ["B_G_HMG_02_high_F", ["rebCost", 500]],
    ["B_static_AT_F", ["rebCost", 700]],
    ["I_G_Mortar_01_F", ["rebCost", 500]]
];

if (_hasContact) then {
    _vehicleAttribute append [
        ["C_Offroad_01_comms_F", ["rebCost", 500]],
        ["C_Offroad_01_covered_F", ["rebCost", 500]],
        ["C_Tractor_01_F", ["rebCost", 100]]
    ];
};
if (_hasApex) then {
    _vehicleAttribute append [
        ["C_Offroad_02_unarmed_F", ["rebCost", 500]],
        ["C_Plane_Civil_01_F", ["rebCost", 1000]],
        ["C_Plane_Civil_01_racing_F", ["rebCost", 1500]]
    ];
};
if (_hasLawsOfWar) then {
    _vehicleAttribute append [
        ["C_Van_02_medevac_F", ["rebCost", 500]],
        ["C_Van_02_vehicle_F", ["rebCost", 500]],
        ["C_Van_02_transport_F", ["rebCost", 500]],
        ["C_Van_02_service_F", ["rebCost", 750]]
    ];
};
if (_hasKart) then {
    _vehicleAttribute append [
        ["C_Kart_01_F", ["rebCost", 250]],
        ["C_Kart_01_Fuel_F", ["rebCost", 250]],
        ["C_Kart_01_Blu_F", ["rebCost", 250]],
        ["C_Kart_01_Red_F", ["rebCost", 250]],
        ["C_Kart_01_Vrana_F", ["rebCost", 250]]
    ];
};

["attributesVehicles", _vehicleAttribute] call _fnc_saveToTemplate;



// /********************************************************\
// *                        Identity                        *
// \********************************************************/
private _face = [
    "WhiteHead_01",
    "WhiteHead_02",
    "WhiteHead_03",
    "WhiteHead_04",
    "WhiteHead_05",
    "WhiteHead_06",
    "WhiteHead_07",
    "WhiteHead_08",
    "WhiteHead_09",
    "WhiteHead_11",
    "WhiteHead_12",
    "WhiteHead_14",
    "WhiteHead_15",
    "WhiteHead_16",
    "WhiteHead_18",
    "WhiteHead_19",
    "WhiteHead_20",
    "WhiteHead_21",
    "WhiteHead_22",
    "WhiteHead_23",
    "WhiteHead_24",
    "WhiteHead_25",
    "WhiteHead_26",
    "WhiteHead_27",
    "WhiteHead_28",
    "WhiteHead_29",
    "WhiteHead_30", 
    "WhiteHead_31",
    "WhiteHead_32"
];
private _voice = [
    "Male01ENGB",
    "Male02ENGB",
    "Male03ENGB",
    "Male04ENGB",
    "Male05ENGB"
];

if (_hasTCGM) then {
    #include "..\Common\Modded\TCGM\Identity_Reb.sqf"
};

["faces", _face] call _fnc_saveToTemplate;
["voices", _voice] call _fnc_saveToTemplate;


// /********************************************************\
// *                       Equipment                        *
// \********************************************************/
// Military
private _equipmentGun = ["hgun_PDW2000_F", "hgun_ACPC2_F"];
private _equipmentAmmo = ["30Rnd_9x21_Mag", "9Rnd_45ACP_Mag"];
private _equipmentUniform = [
    "U_B_CombatUniform_mcam",
    "U_B_CombatUniform_mcam_tshirt",
    "U_I_G_resistanceLeader_F",
    "U_I_CombatUniform",
    "U_I_OfficerUniform",
    "U_I_CombatUniform_shortsleeve",
    "U_B_CTRG_1",
    "U_B_CTRG_3",
    "U_B_CTRG_2",
    "U_BG_Guerilla2_2",
    "U_BG_Guerilla2_1",
    "U_BG_Guerilla2_3",
    "U_BG_Guerilla1_1",
    "U_BG_Guerrilla_6_1",
    "U_BG_leader",
    "U_BG_Guerilla3_1",
    "U_C_HunterBody_grn",
    "U_O_SpecopsUniform_ocamo",
    "U_B_CombatUniform_mcam_vest",
    "U_B_survival_uniform",
    "U_B_CombatUniform_mcam_worn",
    "U_I_G_Story_Protagonist_F"
];
private _equipmentHeadgear = [
    "H_Watchcap_blk",
    "H_Watchcap_cbr",
    "H_Watchcap_camo",
    "H_Watchcap_khk",
    "H_Booniehat_oli",
    "H_Booniehat_dgtl",
    "H_Cap_oli",
    "H_Cap_oli_hs",
    "H_Cap_khaki_specops_UK",
    "H_Cap_blk_Raven",
    "H_Cap_brn_SPECOPS",
    "H_MilCap_gry",
    "H_MilCap_ocamo",
    "H_MilCap_mcamo",
    "H_MilCap_dgtl",
    "H_Cap_headphones"
];
private _equipmentVest = [
    "V_Rangemaster_belt",
    "V_BandollierB_blk",
    "V_BandollierB_cbr",
    "V_BandollierB_rgr",
    "V_BandollierB_khk",
    "V_BandollierB_oli"
];
private _equipmentFacewear = [
    "G_Balaclava_blk",
    "G_Balaclava_BlueStrips",
    "G_Balaclava_combat",
    "G_Balaclava_Flecktarn",
    "G_Balaclava_Halloween_01",
    "G_Balaclava_lowprofile",
    "G_Balaclava_oli",
    "G_Balaclava_Flames1",
    "G_Balaclava_Scarecrow_01",
    "G_Balaclava_Skull1",
    "G_Balaclava_Tropentarn",
    "G_Bandanna_aviator",
    "G_Bandanna_beast",
    "G_Bandanna_blk",
    "G_Bandanna_BlueFlame1",
    "G_Bandanna_BlueFlame2",
    "G_Bandanna_CandySkull",
    "G_Bandanna_khk",
    "G_Bandanna_oli",
    "G_Bandanna_OrangeFlame1",
    "G_Bandanna_RedFlame1",
    "G_Bandanna_shades",
    "G_Bandanna_Skull1",
    "G_Bandanna_Syndikat1",
    "G_Bandanna_Skull2",
    "G_Bandanna_sport",
    "G_Bandanna_tan",
    "G_Bandanna_Vampire_01",
    "G_Bandanna_Syndikat2"
];
private _equipmentBackpack = [
    "B_AssaultPack_blk",
    "B_AssaultPack_cbr",
    "B_AssaultPack_dgtl",
    "B_AssaultPack_rgr",
    "B_AssaultPack_ocamo",
    "B_AssaultPack_khk",
    "B_AssaultPack_mcamo",
    "B_AssaultPack_sgg"
];

// Unit Equipment
private _equipmentUnitUniform = ["U_BG_Guerrilla_6_1", "U_BG_Guerilla1_1", "U_BG_Guerilla2_2", "U_BG_Guerilla2_1", "U_BG_Guerilla2_3"];
private _equipmentUnitHeadgear = ["H_Booniehat_khk_hs", "H_Booniehat_khk", "H_Booniehat_mcamo", "H_Booniehat_oli", "H_Booniehat_tan"];
private _equipmentUnitFacewear = [
    "G_Aviator",
    "G_Shades_Black",
    "G_Shades_Blue",
    "G_Shades_Green",
    "G_Shades_Red",
    "G_Spectacles",
    "G_Sport_Red",
    "G_Sport_Blackyellow",
    "G_Sport_BlackWhite",
    "G_Sport_Checkered",
    "G_Sport_Blackred",
    "G_Sport_Greenblack",
    "G_Squares_Tinted",
    "G_Squares",
    "G_Spectacles_Tinted",
    "G_Tactical_Clear",
    "G_Tactical_Black"
];



if (_hasApex) then {
    _equipmentUniform append [
        "U_I_C_Soldier_Bandit_4_F",
        "U_I_C_Soldier_Bandit_1_F",
        "U_I_C_Soldier_Bandit_2_F",
        "U_I_C_Soldier_Bandit_5_F",
        "U_I_C_Soldier_Bandit_3_F",
        "U_B_T_Soldier_F",
        "U_B_T_Soldier_AR_F",
        "U_B_CTRG_Soldier_F",
        "U_B_CTRG_Soldier_Arid_F",
        "U_B_CTRG_Soldier_3_F",
        "U_B_CTRG_Soldier_3_Arid_F",
        "U_B_CTRG_Soldier_2_F",
        "U_B_CTRG_Soldier_2_Arid_F",
        "U_B_CTRG_Soldier_urb_1_F",
        "U_B_CTRG_Soldier_urb_3_F",
        "U_B_CTRG_Soldier_urb_2_F",
        "U_I_C_Soldier_Para_2_F",
        "U_I_C_Soldier_Para_3_F",
        "U_I_C_Soldier_Para_5_F",
        "U_I_C_Soldier_Para_4_F",
        "U_I_C_Soldier_Para_1_F"
    ];
    _equipmentHeadgear append ["H_MilCap_ghex_F", "H_MilCap_tna_F"];
    _equipmentFacewear append ["G_Balaclava_TI_blk_F", "G_Balaclava_TI_G_blk_F", "G_Balaclava_TI_tna_F", "G_Balaclava_TI_G_tna_F"];
    _equipmentBackpack append ["B_AssaultPack_tna_F"];
    _equipmentUnitHeadgear append ["H_Booniehat_tna_F"];
};
if (_hasContact) then {
    _equipmentUniform append [
        "U_I_E_Uniform_01_officer_F",
        "U_I_E_Uniform_01_shortsleeve_F",
        "U_I_E_Uniform_01_sweater_F",
        "U_I_E_Uniform_01_tanktop_F",
        "U_I_E_Uniform_01_F",
        "U_C_CBRN_Suit_01_Blue_F",
        "U_B_CBRN_Suit_01_MTP_F",
        "U_B_CBRN_Suit_01_Tropic_F",
        "U_C_CBRN_Suit_01_White_F",
        "U_B_CBRN_Suit_01_Wdl_F",
        "U_I_CBRN_Suit_01_AAF_F",
        "U_I_E_CBRN_Suit_01_EAF_F"
    ];
    _equipmentHeadgear append [
        "H_MilCap_taiga",
        "H_MilCap_wdl",
        "H_MilCap_eaf",
        "H_MilCap_grn",
        "H_Booniehat_mgrn",
        "H_Booniehat_taiga",
        "H_Booniehat_wdl",
        "H_Booniehat_eaf"
    ];
    _equipmentBackpack append ["B_AssaultPack_wdl_F", "B_AssaultPack_eaf_F"];
    _equipmentUnitHeadgear append ["H_Booniehat_mgrn", "H_Booniehat_taiga", "H_Booniehat_wdl"];
};
if (_hasLawsOfWar) then {
    _equipmentVest append ["V_LegStrapBag_black_F", "V_LegStrapBag_coyote_F", "V_LegStrapBag_olive_F"];
    _equipmentUnitUniform append ["U_BG_Guerilla1_2_F"];
};

// Modded
if (_hasSNS) then {
    #include "..\Common\Modded\SNS\Equipment_Reb.sqf"
};


["initialRebelEquipment", 
    _equipmentGun
    + _equipmentAmmo
    + _equipmentUniform
    + _equipmentHeadgear
    + _equipmentVest
    + _equipmentHeadgear
    + _equipmentBackpack
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
