$ErrorActionPreference = 'Stop';
$url        = 'https://www.terminalworks.com/downloads/tsprint/TSPrint_client.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'TSPrint Client'

  checksum      = '768d63c865f9e32648a09112bb5fdb0f448453f2805e411ffaa314c90668034b'
  checksumType  = 'sha256'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' 
}

Install-ChocolateyPackage @packageArgs 