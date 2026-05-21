private _extra = [] call A3A_fnc_itemset_miscEssentials;

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

if (A3A_hasACE) then {
    _extraSquadLeader append ["ACE_microDAGR", "ACE_DAGR"];
    _extraExplosiveExpert append ["ACE_Clacker", "ACE_DefusalKit"];
    _extraMarksman append ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"];
    _extraSniper append ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"]
};