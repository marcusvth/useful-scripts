# Gets OfficeFileCache path

$CachePath = Get-ChildItem $ENV:LocalAppData/Microsoft/Office/16.0 | Where-Object Name -LIKE OfficeFileCache | Select-Object -Expand FullName

# Closes all applications using the cache

Write-Output 'Fechando aplicações...'
$Applications = 'outlook', 'excel', 'powerpnt', 'onedrive', 'onenote', 'winword' 
$Applications | ForEach-Object { 
    Stop-Process -ProcessName $_ -ErrorAction SilentlyContinue
}

# Delete all files (if possible)

Write-Output 'Removendo cache...';
Get-ChildItem $CachePath | ForEach-Object { 
    Remove-Item -LiteralPath $_.FullName -Force -Recurse -ErrorAction SilentlyContinue
}