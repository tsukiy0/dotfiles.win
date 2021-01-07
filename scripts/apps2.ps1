# node
$NodeVersion = "V14.15.3"
if ((node --version) -ne $NodeVersion) {
    nvm install $NodeVersion
    nvm use $NodeVersion
}

npm install -g yarn