@echo off
REM ###################################################################################################################################
REM #
REM # Merge a selection of layers from the top50NL geopackages into one geopackage using the GDAL tools
REM #
REM ###################################################################################################################################

set GDAL_DATA=c:\program files\GDAL\gdal-data
set GDAL_DRIVER_PATH=C:\Program Files\GDAL\gdalplugins
set PROJ_LIB=C:\Program Files\GDAL\projlib
set PYTHONPATH=C:\Program Files\GDAL\


SET PATH=c:\program files\gdal\;%PATH%

gdalinfo --version

SET GPKGFILE="..\maps\merged_gpkg\merge0050.gpkg"
IF EXIST %GPKGFILE% DEL /F %GPKGFILE%

SET POSTFIX=%1

echo #####################################################
echo # Top50NL%POSTFIX%
echo #####################################################
echo start %date% %time%

echo 1 - FunctioneelGebied
ogr2ogr         -f GPKG -select type_functioneel_gebied,nederlandse_naam ..\maps\merged_gpkg\merge0050.gpkg ..\maps\gpkg\top50nl_Compleet%POSTFIX%.gpkg top50nl_functioneel_gebied_punt
echo 2 - Gebouw
ogr2ogr -update -f GPKG -select type_gebouw,fysiek_voorkomen,hoogteklasse,nederlandse_naam ..\maps\merged_gpkg\merge0050.gpkg ..\maps\gpkg\top50nl_Compleet%POSTFIX%.gpkg top50nl_gebouw_punt
ogr2ogr -update -f GPKG -select type_gebouw,fysiek_voorkomen,hoogteklasse,nederlandse_naam ..\maps\merged_gpkg\merge0050.gpkg ..\maps\gpkg\top50nl_Compleet%POSTFIX%.gpkg top50nl_gebouw_vlak
echo 3 - GeografischGebied
echo 4 - Hoogte
ogr2ogr -update -f GPKG -select type_hoogte ..\maps\merged_gpkg\merge0050.gpkg ..\maps\gpkg\top50nl_Compleet%POSTFIX%.gpkg top50nl_hoogte_punt
ogr2ogr -update -f GPKG -select type_hoogte ..\maps\merged_gpkg\merge0050.gpkg ..\maps\gpkg\top50nl_Compleet%POSTFIX%.gpkg top50nl_hoogte_lijn
echo 5 - InrichtingsElement
ogr2ogr -update -f GPKG -select type_inrichtingselement,nederlandse_naam,nummer,status ..\maps\merged_gpkg\merge0050.gpkg ..\maps\gpkg\top50nl_Compleet%POSTFIX%.gpkg top50nl_inrichtingselement_punt
ogr2ogr -update -f GPKG -select type_inrichtingselement,nederlandse_naam,nummer,status ..\maps\merged_gpkg\merge0050.gpkg ..\maps\gpkg\top50nl_Compleet%POSTFIX%.gpkg top50nl_inrichtingselement_lijn
echo 6 - Plaats
REM missing!
REM ogr2ogr -update -f GPKG -select nederlandse_naam,naam_officieel,type_gebied ..\maps\merged_gpkg\merge0050.gpkg ..\maps\gpkg\top50nl_Compleet%POSTFIX%.gpkg top50nl_plaats_punt
REM ogr2ogr -update -f GPKG -select nederlandse_naam,naam_officieel,type_gebied ..\maps\merged_gpkg\merge0050.gpkg ..\maps\gpkg\top50nl_Compleet%POSTFIX%.gpkg top50nl_plaats_vlak
echo 7 - Plantopografie
REM missing!
echo 8 - RegistratiefGebied
ogr2ogr -update -f GPKG -select type_registratief_gebied,nederlandse_naam,nummer ..\maps\merged_gpkg\merge0050.gpkg ..\maps\gpkg\top50nl_Compleet%POSTFIX%.gpkg top50nl_registratief_gebied_vlak
echo 9 - Relief
ogr2ogr -update -f GPKG -select type_relief,hoogteklasse,functie ..\maps\merged_gpkg\merge0050.gpkg ..\maps\gpkg\top50nl_Compleet%POSTFIX%.gpkg top50nl_relief_lijn
echo 10 - Spoorbaandeel
ogr2ogr -update -f GPKG -select type_spoorbaan,fysiek_voorkomen,status ..\maps\merged_gpkg\merge0050.gpkg ..\maps\gpkg\top50nl_Compleet%POSTFIX%.gpkg top50nl_spoorbaandeel_lijn
echo 11 - Terrein
ogr2ogr -update -f GPKG -select type_landgebruik ..\maps\merged_gpkg\merge0050.gpkg ..\maps\gpkg\top50nl_Compleet%POSTFIX%.gpkg top50nl_terrein_vlak
echo 12 - Waterdeel
ogr2ogr -update -f GPKG -select type_water,breedteklasse,fysiek_voorkomen ..\maps\merged_gpkg\merge0050.gpkg ..\maps\gpkg\top50nl_Compleet%POSTFIX%.gpkg top50nl_waterdeel_lijn
ogr2ogr -update -f GPKG -select type_water,breedteklasse,fysiek_voorkomen ..\maps\merged_gpkg\merge0050.gpkg ..\maps\gpkg\top50nl_Compleet%POSTFIX%.gpkg top50nl_waterdeel_vlak
echo 13 - Wegdeel
ogr2ogr -update -f GPKG -select type_infrastructuur,type_weg,fysiek_voorkomen,nederlandse_straatnaam,hoofdverkeersgebruik,verhardingsbreedteklasse,gescheiden_rijbaan,type_verharding,wegnummer_a_weg,wegnummer_n_weg,wegnummer_e_weg,wegnummer_s_weg,afritnummer,afritnaam,knooppuntnaam,brugnaam,tunnelnaam ..\maps\merged_gpkg\merge0050.gpkg ..\maps\gpkg\top50nl_Compleet%POSTFIX%.gpkg top50nl_wegdeel_lijn
ogr2ogr -update -f GPKG -select type_infrastructuur,type_weg,fysiek_voorkomen,nederlandse_straatnaam,hoofdverkeersgebruik,verhardingsbreedteklasse,gescheiden_rijbaan,type_verharding,wegnummer_a_weg,wegnummer_n_weg,wegnummer_e_weg,wegnummer_s_weg,afritnummer,afritnaam,knooppuntnaam,brugnaam,tunnelnaam ..\maps\merged_gpkg\merge0050.gpkg ..\maps\gpkg\top50nl_Compleet%POSTFIX%.gpkg top50nl_wegdeel_vlak

echo done %date% %time%