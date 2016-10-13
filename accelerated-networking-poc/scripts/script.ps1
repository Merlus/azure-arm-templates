# Download required files
New-Item -Path C:\Downloads -ItemType Directory
Invoke-WebRequest -Uri 'https://gallery.technet.microsoft.com/NTttcp-Version-528-Now-f8b12769/file/159655/1/NTttcp-v5.33.zip' -OutFile 'C:\Downloads\NTttcp-v5.33.zip'
Invoke-WebRequest -Uri 'https://gallery.technet.microsoft.com/Azure-Accelerated-471b5d84/file/160835/1/MLNX_VPI_WinOF-5_20_All_Win2012R2_and_2016_x64.exe' -OutFile 'C:\Downloads\MLNX_VPI_WinOF-5_20_All_Win2012R2_and_2016_x64.exe'


