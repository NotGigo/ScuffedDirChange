function Show-Menu
{
     param (
           [string]$Title = ‘GAME FOLDER SELECTION’
     )
     cls
     Write-Host “================ $Title ================”
    
     Write-Host “1: Use a MODDED game folder.”
     Write-Host “2: Use an ORIGINAL game folder.”
     Write-Host “Q: Press ‘Q’ to quit.”
}



do
{
     Show-Menu
     $input = Read-Host “Select which game folder to use”
     switch ($input)
     {
           ‘1’ {
                cls
                ‘Deleting original link and making a MODDED one!’
                 #The directory of your MODDED game folder should have its path placed after Value below.
                 New-Item -Path "D:\Games\Grand Theft Auto V" -ItemType SymbolicLink -Value "D:\Games\Grand Theft Auto V - Modded\" -Force
           } ‘2’ {
                cls
                ‘Deleting modded link and making an ORIGINAL one!’
                 #Same as the previous directory, but it should instead be the directory of your unmodded game folder.
                 New-Item -Path "D:\Games\Grand Theft Auto V" -ItemType SymbolicLink -Value "D:\Games\Grand Theft Auto V - Original\" -Force
           } ‘q’ {
                return
           }
     }
     pause
}
until ($input -eq ‘q’)