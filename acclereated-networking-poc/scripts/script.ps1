# Download required files
New-Item -Path C:\Downloads -ItemType Directory
Invoke-WebRequest -Uri 'https://github.com/Merlus/azure-arm-templates/raw/master/acclereated-networking-poc/tools/iperf-3.1.3-win64.zip' -OutFile 'C:\Downloads\iperf-3.1.3-win64.zip'
Invoke-WebRequest -Uri 'https://gallery.technet.microsoft.com/Azure-Accelerated-471b5d84/file/160835/1/MLNX_VPI_WinOF-5_20_All_Win2012R2_and_2016_x64.exe' -OutFile 'C:\Downloads\MLNX_VPI_WinOF-5_20_All_Win2012R2_and_2016_x64.exe'


