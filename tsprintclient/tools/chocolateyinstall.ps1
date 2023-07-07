$ErrorActionPreference = 'Stop';
$url        = 'https://www.terminalworks.com/downloads/tsprint/TSPrint_client.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'TSPrint Client'

  checksum      = '9d4198481308f11e032bf86af92fcd2722638b4f9a3b72e704e5a30a89200340'
  checksumType  = 'sha256'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' 
}

Install-ChocolateyPackage @packageArgs 