/*
	By: NoxSicarius
	
	Disclaimer:
		This loadout script is offered FREE OF CHARE to anyone and everyone who wants it. If you wish to redistribute
		this script or use it in your own mod release then you must give credit to me and you MUST release it in
		accordance with copyleft and the GNU GPL v3 Licence agreement.
		This script is licensed under GNU GPL v3 and using/distributing this script constitutes your agreement to
		these terms.
*/

private ["_Donor","_ProDonor","_player","_UID"];
waitUntil {!isNil "dayz_animalCheck"};
_player = player;
_UID = getPlayerUID _player;

if(isNil "AdminList" then {
	AdminList = [11111111111,222222222222]; // Admins (ONLY if you don't have my admin tool installed)
	ModList = [11111111111,222222222222];}; // Mods (ONLY if you don't have my admin tool installed)
	_Donor = [11111111111,222222222222]; // Donors
	_ProDonor = [11111111111,222222222222]; // ProDonors
	
//Admin Loadout
if (_UID in AdminList) then {
	DefaultMagazines = ["ItemBandage","ItemBandage","ItemBandage","ItemBandage","17Rnd_9x19_glock17","17Rnd_9x19_glock17","30Rnd_762x39_SA58","30Rnd_762x39_SA58","ItemMorphine","ItemPainkiller","ItemBloodbag","ItemSodaRabbit","FoodSteakCooked"];
	DefaultWeapons = ["glock17_EP1","Sa58V_RCO_EP1","NVGoggles","ItemGPS","ItemKnife","ItemToolbox","ItemCrowbar","ItemHatchet"];
	DefaultBackpack = "DZ_LargeGunBag_EP1";
	DefaultBackpackWeapon = "";
}else{	
	//Moderator Loadout
	if(_UID in ModList) then {
		DefaultMagazines = ["ItemBandage","ItemBandage","ItemBandage","ItemBandage","17Rnd_9x19_glock17","17Rnd_9x19_glock17","30Rnd_556x45_G36","30Rnd_556x45_G36","ItemMorphine","ItemPainkiller","ItemBloodbag","ItemWaterbottleBoiled","ItemWaterbottleBoiled","FoodSteakCooked","8Rnd_B_Saiga12_Pellets","8Rnd_B_Saiga12_Pellets","8Rnd_B_Saiga12_74Slug"];
		DefaultWeapons = ["glock17_EP1","G36K_camo","NVGoggles","ItemMap","ItemToolbox"];
		DefaultBackpack = "DZ_Backpack_EP1";
		DefaultBackpackWeapon = "";
	}else{		
		//Pro-Donor Loadout
		if(_UID in _ProDonor) then { 
			DefaultMagazines = ["ItemBandage","ItemBandage","ItemBandage","15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","30Rnd_556x45_G36","30Rnd_556x45_G36","ItemMorphine","ItemPainkiller","ItemBloodbag","ItemSodaRabbit","ItemSodaRabbit","FoodSteakCooked"];
			DefaultWeapons = ["M9SD","G36K_camo","NVGoggles","ItemGPS","ItemKnife","ItemMatchbox","ItemHatchet","ItemToolbox"];
			DefaultBackpack = "DZ_GunBag_EP1";
			DefaultBackpackWeapon = "";
		}else{			
			//Donor Loadout
			if(_UID in _Donor) then {
				DefaultMagazines = ["ItemBandage","ItemBandage","ItemBandage","ItemBandage","ItemMorphine","ItemPainkiller","17Rnd_9x19_glock17","17Rnd_9x19_glock17","ItemGoldBar"];
				DefaultWeapons = ["glock17_EP1","ItemMap","ItemHatchet","ItemToolbox"];
				DefaultBackpack = "DZ_ALICE_Pack_EP1";
				DefaultBackpackWeapon = "";
			}else{
				//Default Loadout for normal players
				DefaultMagazines = ["ItemBandage","ItemBandage","ItemMorphine","ItemPainkiller","ItemSodaRabbit"];
				DefaultWeapons = ["ItemMap","ItemHatchet"];
				DefaultBackpack = "DZ_Patrol_Pack_EP1";
				DefaultBackpackWeapon = "";
			};
		};
	};
};