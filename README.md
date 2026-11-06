STEP 1:  before reinstalling OS ,make sure u launch  in powershell 
     *.\backup.ps1*  and    *winget export -o packages.json*

Step 2 : save the folder wherever you want it to. Make sure you will be able to find it after reinstalling OS. Reinstall OS

Step 3: 
 **Install your apps using :
	   *winget import -i packages.json --ignore-unavailable --accept-package-agreements --accept-source-agreements*
 
 Import your config using :
	  *powershell.exe -ExecutionPolicy Bypass -File ".\restore.ps1"*
