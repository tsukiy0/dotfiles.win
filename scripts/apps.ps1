# cmdline
choco install -y git
choco install -y nvm
choco install -y dotnetcore-sdk
choco install -y dotnet-5.0-sdk
choco install -y dotnetcore-3.1-sdk
choco install -y dotnetcore-2.2-sdk
choco install -y awscli
choco install -y vim
choco install -y ffmpeg

# gui
choco install -y microsoft-windows-terminal
choco install -y googlechrome
choco install -y chromium
choco install -y vscode
choco install -y powertoys
choco install -y docker-desktop
choco install -y vlc
choco install -y steam
choco install -y jetbrainstoolbox
choco install -y dbeaver
choco install -y transmission
choco install -y slack
choco install -y autohotkey
choco install -y postman
choco install -y insomnia-rest-api-client
choco install -y adobe-creative-cloud
choco install -y cura-new
choco install -y via
choco install -y blender
choco install -y autodesk-fusion360
choco install -y wireshark

# jabba
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-Expression (
  Invoke-WebRequest https://github.com/shyiko/jabba/raw/master/install.ps1 -UseBasicParsing
).Content
