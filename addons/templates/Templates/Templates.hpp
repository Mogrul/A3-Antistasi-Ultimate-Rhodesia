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
        name = "Rhodesia";
        description = "The Rhodesian Rebels are former soldiers, farmers, and loyalists of Rhodesia who have taken up arms against the ruling Zimbabwe African National Union government to reclaim their homeland after the fall of the Rhodesian state following the Rhodesian Bush War.";
        flagTexture = QPATHTOFOLDER(Asset\Flag_Reb.paa);
        basepath = QPATHTOFOLDER(Templates\Reb);
        file = "Template";
    };

    class Rhodesia_Civ : Rhodesia_Base
    {
        side = "Civ";
        name = "Rhodesia";
        description = "The Rhodesian Citizens are civilias of Rhodesia—farmers, workers, and townsfolk—caught between insurgent fighting and the rule of Zimbabwe African National Union following the aftermath of the Rhodesian Bush War.";
        flagTexture = QPATHTOFOLDER(Asset\Flag_Civ.paa);
        basepath = QPATHTOFOLDER(Templates\Civ);
        file = "Template";
    };

    class Rhodesia_Occ : Rhodesia_Base
    {
        side = "Occ";
        name = "ZANU";
        description = "The forces of Zimbabwe African National Union (ZANU) are the ruling nationalist movement of Zimbabwe, formed from guerrilla fighters who won power after the Rhodesian Bush War and now defend their control of the state against Rhodesian insurgents.";
        flagTexture = QPATHTOFOLDER(Asset\Flag_Occ.paa);
        basepath = QPATHTOFOLDER(Templates\Occ);
        file = "Template";
    };
};
