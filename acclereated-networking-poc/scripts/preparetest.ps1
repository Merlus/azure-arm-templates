# Create test file

$filePath = "D:\test.file"
$file = [System.IO.File]::Create($filePath)
$file.SetLength(50GB)
$file.Close()