if fail = LoadPackage("AutoDoc", ">= 2016.01.21") then
    Error("AutoDoc 2016.01.21 or newer is required");
fi;

PrintTo( "VERSION", GAPInfo.PackageInfoCurrent.Version ); 


AutoDoc( rec(
) );


QUIT;
