$earphonesConnected = $false

while ($true) {
    $audioDevices = Get-CimInstance -ClassName Win32_SoundDevice

    foreach ($device in $audioDevices) {
        if ($device.Name -like "*headphones*" -or $device.Name -like "*earphone*") {
            $earphonesConnected = $true
            break
        }
    }

    if ($earphonesConnected) {
        # Enable USB ports
        Start-Process -FilePath "C:\Path\To\Your\EnableUSB.bat"
        Write-Host "Earphones connected. USB ports have been enabled."
        break
    }

    Start-Sleep -Seconds 5  # Check every 5 seconds
}