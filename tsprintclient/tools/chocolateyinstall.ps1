$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'TSPrint_client.exe'
#$url        = '' # download url, HTTPS preferred
#$url64      = '' # 64bit URL here (HTTPS preferred) or remove - if installer contains both (very rare), use $url

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  #unzipLocation = $toolsDir
  fileType      = 'EXE' #only one of these: exe, msi, msu
  #url           = $url
  #url64bit      = $url64
  file         = $fileLocation

  softwareName  = 'TSPrint Client' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique

  #checksum      = ''
  #checksumType  = 'sha256' #default is md5, can also be sha1, sha256 or sha512
  #checksum64    = ''
  #checksumType64= 'sha256' #default is checksumType

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' # Inno Setup
  #validExitCodes= @(0) #please insert other valid exit codes here
}

Install-ChocolateyPackage @packageArgs 