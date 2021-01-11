# cmdline
choco install -y git
choco install -y nvm
choco install -y dotnetcore-sdk
choco install -y dotnet-5.0-sdk
choco install -y awscli
choco install -y vim
choco install -y ffmpeg

# gui
choco install -y microsoft-windows-terminal
choco install -y googlechrome
choco install -y vscode
choco install -y powertoys
choco install -y docker-desktop
choco install -y vlc
choco install -y spotify
choco install -y steam

# jabba
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-Expression (
  Invoke-WebRequest https://github.com/shyiko/jabba/raw/master/install.ps1 -UseBasicParsing
).Content
