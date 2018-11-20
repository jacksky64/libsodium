param (
[parameter(Mandatory=$true, HelpMessage="Choose packager configuration project configuration file")]
[string] $configpackager,

[parameter(Mandatory=$true, HelpMessage="Choose output folder")]
[string] $outfolder
)

$package=[xml](get-content $configpackager)
$nupkgname = $outfolder + $package.package.id + "." + $package.package.version + ".nupkg"
.\nuget push $nupkgname camjack -source https://nugetserver.digiteclecco.com:8624/nuget/develop/ -Timeout 1000