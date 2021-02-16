$ErrorActionPreference = 'Stop';
$url        = 'https://www.terminalworks.com/downloads/tsprint/TSPrint_client.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'TSPrint Client'

  checksum      = '071DE2932B93A9BC386F5051C043940E10FFA42A15E9B34C1CE72586F3827709'
  checksumType  = 'sha256'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' 
}

Install-ChocolateyPackage @packageArgs 