#This script checks versions of python, git, aws cli, and azure-cli assuming they are already installed.  
New-Item -ItemType Directory -Force -Path C:\\stgng\\
New-Item -ItemType Directory -Force -Path $HOME\\acmconfig\\
New-Item -ItemType Directory -Force -Path $HOME\\acm\\
New-Item -ItemType Directory -Force -Path $HOME\\acm\\keys\\
New-Item -ItemType Directory -Force -Path $HOME\\acm\\keys\\starter\\
New-Item -ItemType Directory -Force -Path $HOME\\acm\\keys\\adminAccounts\\
python -m pip install --upgrade pip requests
python -m pip install --upgrade pip PyYaml
python -m pip install --upgrade pip IPy
python -m pip install --upgrade pip pyinstaller
python -m pip install --upgrade charset-normalizer
echo "About to: az --version"
az --version
echo 'About to: "az extension add --name resource-graph"'
az extension add --name resource-graph
New-Item -ItemType Directory -Force -Path $HOME\\keys\\
New-Item -ItemType Directory -Force -Path $HOME\\keys\\starter\\
New-Item -ItemType Directory -Force -Path $HOME\\acm\\logs\\
New-Item -ItemType Directory -Force -Path $HOME\\acmhome\\
New-Item -ItemType Directory -Force -Path D:\\a\\AgileCloudManager\\acmAdmin\\
New-Item -ItemType Directory -Force -Path D:\\a\\AgileCloudManager\\acmAdmin\\binaries\\
echo 'About to: git --version'
git --version
#Prepend python to PATH
$old = (Get-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name path).path
$new  =  "C:\\hostedtoolcache\\windows\\Python\\3.10.7\\x64\\Scripts\\;$old"  
echo "About to set item property"
Set-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name path -Value $new
echo "About to show permanent PATH"
Get-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name path
echo "About to add to temporary PATH"
$env:Path = "C:\\hostedtoolcache\\windows\\Python\\3.10.7\\x64\\Scripts\\;" + $env:Path
python -m pip install --upgrade pip requests
echo "About to show temporary PATH"
echo $env:Path
echo 'About to: aws --version'
aws --version
