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
private _hasTCGMGirls = isClass (configFile >> "CfgPatches" >> "TCGM_Girls");


// /********************************************************\
// *                        Vehicle                         *
// \********************************************************/
private _vehicleBasic = [
    "C_Hatchback_01_F", 1.0,
    "C_Hatchback_01_sport_F", 0.5,
    "C_Offroad_01_F", 0.8
];
private _vehicleIndustrial = [
    "C_Truck_02_transport_F", 1.0,
    "C_Van_01_transport_F", 1.0
];
private _vehicleHeli = ["C_Heli_Light_01_civil_F"];
private _vehiclePlane = [];
private _vehicleBoat = [
    "C_Boat_Civil_01_F", 0.3,
    "C_Rubberboat", 1.0
];
private _vehicleRepair = [];
private _vehicleMedical = [];
private _vehicleFuel = [
    "C_Truck_02_fuel_F", 1.0,
    "C_Van_01_fuel_F", 1.0
];

private _vehicleVariant = [];
private _vehicleAnim = [];



if (_hasContact) then {
    _vehicleBasic append [
        "C_Offroad_01_comms_F", 0.7,
        "C_Offroad_01_covered_F", 0.7,
        "C_Tractor_01_F", 0.1
    ];
};
if (_hasApex) then {
    _vehicleBasic append ["C_Offroad_02_unarmed_F", 0.7];
    _vehiclePlane append ["C_Plane_Civil_01_F", 0.5, "C_Plane_Civil_01_racing_F", 0.5];
};
if (_hasLawsOfWar) then {
    _vehicleMedical append ["C_Van_02_medevac_F", 0.6];
    _vehicleBasic append ["C_Van_02_vehicle_F", 0.7, "C_Van_02_transport_F", 0.7];
    _vehicleRepair append ["C_Van_02_service_F", 0.5];
};
if (_hasKart) then {
    _vehicleBasic append ["C_Kart_01_F", 0.1, "C_Kart_01_Fuel_F", 0.1, "C_Kart_01_Blu_F", 0.1, "C_Kart_01_Red_F", 0.1, "C_Kart_01_Vrana_F", 0.1];
};



["vehiclesCivCar", _vehicleBasic] call _fnc_saveToTemplate;
["vehiclesCivIndustrial", _vehicleIndustrial] call _fnc_saveToTemplate;
["vehiclesCivHeli", _vehicleHeli] call _fnc_saveToTemplate;
["vehiclesCivPlanes", _vehiclePlane] call _fnc_saveToTemplate;
["vehiclesCivBoat", _vehicleBoat] call _fnc_saveToTemplate;
["vehiclesCivRepair", _vehicleRepair] call _fnc_saveToTemplate;
["vehiclesCivMedical", _vehicleMedical] call _fnc_saveToTemplate;
["vehiclesCivFuel", _vehicleFuel] call _fnc_saveToTemplate;
["variants", _vehicleVariant] call _fnc_saveToTemplate;
["animations", _vehicleAnim] call _fnc_saveToTemplate;



// /********************************************************\
// *                        Identity                        *
// \********************************************************/
private _currencySymbol = "£";
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

if (_hasTCGMGirls) then {
    #include "..\Common\Modded\TCGM\Identity_Civ_Reb.sqf"
};

["currencySymbol", _currencySymbol] call _fnc_saveToTemplate;
["faces", _face] call _fnc_saveToTemplate;



// /********************************************************\
// *                       Equipment                        *
// \********************************************************/
// Generic
private _equipmentUniform = [
    "U_C_Poloshirt_blue",
    "U_C_Poloshirt_burgundy",
    "U_C_Poloshirt_redwhite",
    "U_C_Poloshirt_salmon",
    "U_C_Poloshirt_stripped",
    "U_C_Poloshirt_tricolour",
    "U_OrestesBody",
    "U_C_Journalist",
    "U_Marshal",
    "U_C_Poor_1"
];
private _equipmentHeadgear = [
    "H_Bandanna_gry",
    "H_Bandanna_blu",
    "H_Bandanna_cbr",
    "H_Bandanna_khk_hs",
    "H_Bandanna_khk",
    "H_Bandanna_mcamo",
    "H_Bandanna_sgg",
    "H_Bandanna_sand",
    "H_Bandanna_surfer",
    "H_Bandanna_surfer_blk",
    "H_Bandanna_surfer_grn",
    "H_Bandanna_camo",
    "H_Booniehat_khk",
    "H_Booniehat_mcamo",
    "H_Booniehat_oli",
    "H_Booniehat_tan",
    "H_Cap_grn_BI",
    "H_Cap_blk",
    "H_Cap_blu",
    "H_Cap_blk_CMMG",
    "H_Cap_grn",
    "H_Cap_blk_ION",
    "H_Cap_Lyfe",
    "H_Cap_MaldenTours",
    "H_Cap_oli",
    "H_Cap_red",
    "H_Cap_surfer",
    "H_Cap_tan",
    "H_Cap_khaki_specops_UK",
    "H_Cap_usblack",
    "H_Cap_tan_specops_US"
];

// Press
private _equipmentPressUniform = ["U_Marshal"];
private _equipmentPressHeadgear = [];
private _equipmentPressVest = ["V_Press_F"];

// Worker
private _equipmentWorkerUniform = [];
private _equipmentWorkerHeadgear = [];
private _equipmentWorkerVest = [];



if (_hasContact) then {
    _equipmentUniform append [
        "U_C_Uniform_Farmer_01_F",
        "U_C_Uniform_Scientist_01_formal_F",
        "U_C_Uniform_Scientist_01_F",
        "U_C_Uniform_Scientist_02_F",
        "U_C_Uniform_Scientist_02_formal_F"
    ];
};
if (_hasApex) then {
    _equipmentUniform append [
        "U_I_C_Soldier_Bandit_4_F",
        "U_I_C_Soldier_Bandit_1_F",
        "U_I_C_Soldier_Bandit_2_F",
        "U_I_C_Soldier_Bandit_5_F",
        "U_I_C_Soldier_Bandit_3_F",
        "U_C_Man_casual_2_F",
        "U_C_Man_casual_3_F",
        "U_C_Man_casual_1_F",
        "U_C_man_sport_1_F",
        "U_C_man_sport_3_F",
        "U_C_man_sport_2_F",
        "U_C_Man_casual_6_F",
        "U_C_Man_casual_4_F",
        "U_C_Man_casual_5_F"
    ];
};
if (_hasLawsOfWar) then {
    _equipmentWorkerUniform append [
        "U_C_ConstructionCoverall_Black_F",
        "U_C_ConstructionCoverall_Blue_F",
        "U_C_ConstructionCoverall_Red_F",
        "U_C_ConstructionCoverall_Vrana_F"
    ];
    _equipmentWorkerVest append [
        "V_Safety_blue_F",
        "V_Safety_orange_F",
        "V_Safety_yellow_F"
    ];
    _equipmentWorkerHeadgear = [
        "H_Construction_basic_black_F",
        "H_Construction_earprot_black_F",
        "H_Construction_headset_black_F",
        "H_Construction_basic_orange_F",
        "H_Construction_earprot_orange_F",
        "H_Construction_headset_orange_F",
        "H_Construction_basic_red_F",
        "H_Construction_earprot_red_F",
        "H_Construction_headset_red_F",
        "H_Construction_basic_vrana_F",
        "H_Construction_earprot_vrana_F",
        "H_Construction_headset_vrana_F",
        "H_Construction_basic_white_F",
        "H_Construction_earprot_white_F",
        "H_Construction_headset_white_F",
        "H_Construction_basic_yellow_F",
        "H_Construction_earprot_yellow_F",
        "H_Construction_headset_yellow_F"
    ];
    _equipmentPressHeadgear append [
        "H_PASGT_basic_blue_press_F",
        "H_PASGT_neckprot_blue_press_F"
    ];
};
if (_hasArtOfWar) then {
    _equipmentUniform append [
        "U_C_ArtTShirt_01_v6_F",
        "U_C_ArtTShirt_01_v1_F",
        "U_C_ArtTShirt_01_v2_F",
        "U_C_ArtTShirt_01_v4_F",
        "U_C_ArtTShirt_01_v5_F",
        "U_C_ArtTShirt_01_v3_F",
        "U_C_FormalSuit_01_black_F",
        "U_C_FormalSuit_01_blue_F",
        "U_C_FormalSuit_01_gray_F",
        "U_C_FormalSuit_01_khaki_F",
        "U_C_FormalSuit_01_tshirt_black_F",
        "U_C_FormalSuit_01_tshirt_gray_F"
    ];
};

// Modded
if (_hasSNS) then {
    #include "..\Common\Modded\SNS\Equipment_Civ.sqf"
};

["uniforms",
    _equipmentUniform
    + _equipmentPressUniform
    + _equipmentWorkerUniform
] call _fnc_saveToTemplate;
["headgear", _equipmentHeadgear] call _fnc_saveToTemplate;



// /********************************************************\
// *                        Loadout                         *
// \********************************************************/
private _loadout = call _fnc_createLoadoutData;

_loadout set ["uniforms", _equipmentUniform];
_loadout set ["helmets", _equipmentHeadgear];
_loadout set ["maps", ["ItemMap"]];
_loadout set ["watches", ["ItemWatch"]];
_loadout set ["compasses", ["ItemCompass"]];

_loadout set ["pressUniforms", _equipmentPressUniform];
_loadout set ["pressHelmets", _equipmentPressHeadgear];
_loadout set ["pressVests", _equipmentPressVest];

_loadout set ["workerUniforms", _equipmentWorkerUniform];
_loadout set ["workerHelmets", _equipmentWorkerHeadgear];
_loadout set ["workerVests", _equipmentWorkerVest];



// /********************************************************\
// *                       Unit Type                        *
// \********************************************************/
private _man = {
    ["helmets"] call _fnc_setHelmet;
    ["uniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _worker = {
    ["workerHelmets"] call _fnc_setHelmet;
    ["workerUniforms"] call _fnc_setUniform;
    ["workerVests"] call _fnc_setVest;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _press = {
    ["pressHelmets"] call _fnc_setHelmet;
    ["pressVests"] call _fnc_setVest;
    ["pressUniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};

private _unit = [
    ["Press", _press],
    ["Worker", _worker],
    ["Man", _man]
];

["militia", _unit, _loadout] call _fnc_generateAndSaveUnitsToTemplate;