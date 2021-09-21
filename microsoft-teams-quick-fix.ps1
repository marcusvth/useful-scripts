Stop-Process -ProcessName 'Teams' -ErrorAction SilentlyContinue; 

Start-Sleep 3;

$Paths = 'Application Cache\Cache', 'blob_storage', 'Cache', 'databases', 'GPUcache', 'IndexedDB', 'Local Storage', 'tmp';
$Paths | ForEach-Object { 
    Write-Output "Excluindo $($_)...";
    Remove-Item "$($env:APPDATA)\Microsoft\Teams\$($_)" -Force -Recurse -ErrorAction SilentlyContinue; 
}