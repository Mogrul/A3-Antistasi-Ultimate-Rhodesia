// Parents
private _templateParent = {
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
private _templateSpecialised = {
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
private _templateSquadLeader = {
    call _templateParent;

    // Apparel
    ["headgearSquadLeader"] call _fnc_setHelmet;
    ["vestSquadLeader"] call _fnc_setVest;

    // Weapon
    ["grenadeSignal", 2] call _fnc_addItemSet;

    // Utility / Extras
    ["extraSquadLeader"] call _fnc_addItemSet;

    ["GPS"] call _fnc_addGPS;

    if (A3A_hasACE) then {
        ["ACE_microDAGR", "ACE_DAGR"] call _fnc_addItemSet;
    };
};
private _templateRifleman = {
    call _templateParent;

    // Apparel
    ["headgear"] call _fnc_setHelmet;
    [["vestHeavy", "vest"] _fnc_fallback] call _fnc_setVest;

    // Utility / Extras
    ["extraRifleman"] call _fnc_addItemSet;
};
private _templateRadioman = {
    call _templateParent;

    // Apparel
    ["headgear"] call _fnc_setHelmet;
    [["vestHeavy", "vest"] _fnc_fallback] call _fnc_setVest;

    // Utility / Extras
    ["backpackRadio"] call _fnc_setBackpack;
    ["extraRifleman"] call _fnc_addItemSet;
};
private _templateMedic = {
    call _templateParent;

    // Apparel
    [["headgearMedic", "headgear"] call _fnc_fallback] call _fnc_setHelmet;
    [["vestMedic", "vest"] call _fnc_fallback] call _fnc_setVest;

    // Utility / Extras
    ["medicalMedic"] call _fnc_addItemSet;
    ["extraMedic"] call _fnc_addItemSet;
};
private _templateGrenadier = {
    call _templateParent;

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
private _templateEE = {
    call _templateParent;

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

    if (A3A_hasACE) then {
        ["ACE_Clacker", "ACE_DefusalKit"] call _fnc_addItemSet;
    };
};
private _templateEngineer = {
    call _templateParent;

    // Apparel
    ["headgear"] call _fnc_setHelmet;
    [["vestHeavy", "vest"] _fnc_fallback] call _fnc_setVest;

    // Utility / Extras
    ["backpack"] call _fnc_setBackpack;
    ["extraEngineer"] call _fnc_addItemSet;

    // Placeables
    if (random 1 > 0.5) then {["explosiveLight", 1] call _fnc_addItem;};
};
private _templateLAT = {
    call _templateParent;

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
private _templateAT = {
    call _templateParent;

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
private _templateAA = {
    call _templateParent;

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
private _templateMG = {
    call _templateSpecialised;

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
private _templateMarksman = {
    call _templateSpecialised;

    // Apparel
    [["headgearMarksman", "headgear"] _fnc_fallback] call _fnc_setHelmet;
    [["vestMarksman", "vest"] _fnc_fallback] call _fnc_setVest;

    // Weapon
    ["rifleMarksman"] call _fnc_setPrimary;

    // Ammo
    ["primary", 6] call _fnc_addMagazines;

    // Utility / Extras
    ["extraMarksman"] call _fnc_addItemSet;

    if (A3A_hasACE) then {
        ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"] call _fnc_addItemSet;
    };
};
private _templateSniper = {
    call _templateSpecialised;

    // Apparel
    [["headgearSniper", "headgear"] _fnc_fallback] call _fnc_setHelmet;
    [["vestSniper", "vest"] _fnc_fallback] call _fnc_setVest;

    // Weapon
    ["rifleSniper"] call _fnc_setPrimary;

    // Ammo
    ["primary", 6] call _fnc_addMagazines;

    // Utility / Extras
    ["extraSniper"] call _fnc_addItemSet;

    if (A3A_hasACE) then {
        ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"] call _fnc_addItemSet;
    };
};
private _templatePolice = {
    // Apparel
    ["headgear"] call _fnc_setHelmet;
    ["vest"] call _fnc_setVest;
    ["uniform"] call _fnc_setUniform;

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
private _templatePoliceSquadLeader = {
    // Apparel
    ["headgearSquadLeader"] call _fnc_setHelmet;
    ["vest"] call _fnc_setVest;
    ["uniform"] call _fnc_setUniform;

    // Weapon
    [selectRandom ["rifle", "carbine"]] call _fnc_setPrimary;
    ["sidearm"] call _fnc_addHandgun;

    // Ammo
    ["primary", 3] call _fnc_addMagazines;
    ["handgun", 2] call _fnc_addMagazines;

    // Utility / Extras
    ["medicalStandard"] call _fnc_addItemSet;
    ["extraSquadLeader"] call _fnc_addItemSet;
    ["extra"] call _fnc_addItemSet;
    ["grenadeSmoke", 1] call _fnc_addItem;

    ["map"] call _fnc_addMap;
    ["watch"] call _fnc_addWatch;
    ["compass"] call _fnc_addCompass;
    ["radio"] call _fnc_addRadio;
};
private _templateCrew = {
    // Apparel
    ["headgear"] call _fnc_setHelmet;
    ["vest"] call _fnc_setVest;
    ["uniform"] call _fnc_setUniform;

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
private _templateUnarmed = {
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
private _templateTraitor = {
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
private _templateOfficer = {
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
