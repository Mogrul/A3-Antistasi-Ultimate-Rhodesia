class CfgFunctions
{
    class A3A {
        class Base {
            class initPetros {
                file = QPATHTOFOLDER(functions\antistasi\fn_initPetros.sqf);
                recompile = 1;
            };
            class createPetros {
                file = QPATHTOFOLDER(functions\antistasi\fn_createPetros.sqf);
                recompile = 1;
            };
        };
    };

    class A3U_Rhodesia
    {
        file = QPATHTOFOLDER(functions);
    };
};
