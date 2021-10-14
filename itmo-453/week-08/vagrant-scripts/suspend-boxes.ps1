param($vagrantboxes)
foreach ($box in $vagrantboxes) 
{
    write-host "Suspending: $($box)"
    Set-Location $box
    vagrant suspend 
    write-host "Sleeping for 10 seconds..."
    Start-Sleep 10
    Set-Location ../
}
