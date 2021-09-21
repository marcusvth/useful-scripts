Get-ComputerInfo -Property CsDNSHostName, BiosSeralNumber, CsSystemFamily | Foreach-Object {Write-Output "$([char]0x25cf) Hostname: $($_.CsDNSHostname)`n$([char]0x25cf) S/N: $($_.BiosSeralNumber)`n$([char]0x25cf) Device: $($_.CsSystemFamily)"} | clip