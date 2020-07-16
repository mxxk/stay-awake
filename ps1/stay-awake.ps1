$char = '.'
$seconds = 60
Write-Host
    "This command sends a ${char} key press every ${seconds} seconds."
    "To terminate, press Ctrl-C."
$shell = New-Object -ComObject wscript.shell
while ($true) {
    $shell.SendKeys($char)
    Write-Host $char -NoNewline
    Start-Sleep -Seconds $seconds
}
