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


