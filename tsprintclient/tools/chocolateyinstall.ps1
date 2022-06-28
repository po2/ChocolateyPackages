$ErrorActionPreference = 'Stop';
$url        = 'https://www.terminalworks.com/downloads/tsprint/TSPrint_client.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'TSPrint Client'

  checksum      = '68c1ae6374cd06cc343b9c8d02cd5481d89caddec458db8099e451ba2806d0a8'
  checksumType  = 'sha256'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' 
}

Install-ChocolateyPackage @packageArgs 