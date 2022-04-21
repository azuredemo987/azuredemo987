$StorageLocation = '\\iotse\builds\'
$FolderInQuestion = 'Archives'
$targetPath = Join-Path $StorageLocation $FolderinQuestion
Write-host "Calculating size of: " $targetPath
$Measure = (Get-ChildItem $targetPath -Recurse | Measure-Object Length -Sum).Sum 
Write-host "size of:" $targetPath "is " $Measure "Bytes."
$Measure_GB = $Measure/1GB
Write-host "size of:" $targetPath "is " $Measure_GB "GB."