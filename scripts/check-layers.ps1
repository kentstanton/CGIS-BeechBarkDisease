<#
.Synopsis
   Script - List Base Layers associated with the community GIS project.
.DESCRIPTION
   
.EXAMPLE
   ./check-layers
#>


$ProjectRootPath = "C:\myworld\CGIS\BBD"
$ProjectConfigPath = "$ProjectRootPath\config"
$baselayers = Get-Content -Path "$ProjectConfigPath\baselayers.csv"


$parsed = $baselayers | ConvertFrom-csv

$parsed | Out-GridView
