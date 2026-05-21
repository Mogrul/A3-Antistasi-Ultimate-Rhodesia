class Templates 
{
    class Rhodesia_Base
    {
        basepath = QPATHTOFOLDER(Templates);
        priority = 100;
    };

    class Rhodesia_Reb : Rhodesia_Base
    {
        side = "Reb";
        name = "$STR_A3UE_Rhodesia_Templates_Reb_Name";
        description = $STR_A3UE_Rhodesia_Templates_Reb_Desc;
        flagTexture = QPATHTOFOLDER(Asset\Flag_Reb.paa);
        basepath = QPATHTOFOLDER(Templates\Reb);
        file = "Template";
    };

    class Rhodesia_Civ : Rhodesia_Base
    {
        side = "Civ";
        name = $STR_A3UE_Rhodesia_Templates_Civ_Name;
        description = $STR_A3UE_Rhodesia_Templates_Civ_Desc;
        flagTexture = QPATHTOFOLDER(Asset\Flag_Civ.paa);
        basepath = QPATHTOFOLDER(Templates\Civ);
        file = "Template";
    };

    class Rhodesia_Occ : Rhodesia_Base
    {
        side = "Occ";
        name = $STR_A3UE_Rhodesia_Templates_Occ_Name;
        description = $STR_A3UE_Rhodesia_Templates_Occ_Desc;
        flagTexture = QPATHTOFOLDER(Asset\Flag_Occ.paa);
        basepath = QPATHTOFOLDER(Templates\Occ);
        file = "Template";
    };
};
