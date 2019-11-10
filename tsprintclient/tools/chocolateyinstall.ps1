$ErrorActionPreference = 'Stop';
$url        = 'https://www.terminalworks.com/downloads/tsprint/TSPrint_client.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'TSPrint Client'

  checksum      = '0dbaaef746ca50ed644825fe98155806'
  checksumType  = 'md5'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' 
}

Install-ChocolateyPackage @packageArgs 