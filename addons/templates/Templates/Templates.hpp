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
        name = $STR_A3UE_params_Rhodesia_RebName;
        description = $STR_A3UE_params_Rhodesia_RebDesc;
        flagTexture = QPATHTOFOLDER(Asset\Flag_Reb.paa);
        basepath = QPATHTOFOLDER(Templates\Reb);
        file = "Template";
    };
};
