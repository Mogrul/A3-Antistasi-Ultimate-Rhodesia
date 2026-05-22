#include "script_component.hpp"

class CfgPatches 
{
    class ADDON 
    {
        name = COMPONENT_NAME;
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {QDOUBLES(PREFIX,core)};
        units[] = {};
        weapons[] = {};
        author = AUTHOR;
        authors[] = { AUTHORS };
        authorUrl = "https://mogrul.com";
        VERSION_CONFIG;
    };
};

class A3A 
{
    #include "Templates\Templates.hpp"
    #include "AddonVics\AddonVics.hpp"
};