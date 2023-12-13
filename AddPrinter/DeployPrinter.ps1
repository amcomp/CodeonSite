$infpath = 'Your Drivers .inf path' #Find this by opening the .inf file of your driver.
$Drivername = 'Driver Name' #Anything
$portname = "Port Name" #Anything
$printername = "Printer name" #Anything
#add all variable names here

pnputil.exe /add-driver $infpath
#Add Driver to print store

Add-PrinterDriver -Name $Drivername -InfPath $infpath
Add-PrinterPort -Name $portname -PrinterHostAddress x.x.x.x
Add-Printer -DriverName $Drivername -Name $printername -PortName $portname
#Added Variable input for easier construction

Get-Printer