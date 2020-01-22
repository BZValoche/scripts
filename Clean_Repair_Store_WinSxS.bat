@echo off
color 4
echo Analyse du store
Dism.exe /Online /Cleanup-Image /AnalyzeComponentStore
pause
color 5
echo Commencer le nettoyage des anciennes versions des composants remplaces
Dism.exe /Online /Cleanup-Image /StartComponentCleanup
pause
color 6
echo Le commutateur /ResetBase permet de retirer la base des composants obsoletes
Dism.exe /Online /Cleanup-Image /StartComponentCleanup /ResetBase
pause
color 7
echo La commande provoque la reparation du magasin de packages
dism.exe /online /Cleanup-Image /RestoreHealth
pause
color 8
echo Finir par le nettoyage des differents service packs installes sur le systeme.
Dism.exe /Online /Cleanup-Image /SPSuperseded
pause