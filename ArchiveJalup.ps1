26..131 | %{
    $url = "https://japaneselevelup.com/?paged=$_&s"
    Write-Warning "Saving $url"
    $out = python .\waybackdl.py $url
    if ($out) {
        Add-Content -Path jaluparchive.log -Value $out
    } else {
        Add-Content -Path jaluperrors.log -Value $url
    }
    Start-Sleep -Seconds 30
}
