# node
$NodeVersion = "V14.15.3"
if ((node --version) -ne $NodeVersion) {
    nvm install $NodeVersion
    nvm use $NodeVersion
}

npm install -g yarn

# java
$JavaVersion = "1.15"
if ((jabba current) -ne $JavaVersion) {
    jabba install $JavaVersion
    jabba use $JavaVersion
    $envRegKey = [Microsoft.Win32.Registry]::LocalMachine.OpenSubKey('SYSTEM\CurrentControlSet\Control\Session Manager\Environment', $true)
    $envPath=$envRegKey.GetValue('Path', $null, "DoNotExpandEnvironmentNames").replace('%JAVA_HOME%\bin;', '')
    [Environment]::SetEnvironmentVariable('JAVA_HOME', "$(jabba which $(jabba current))", 'Machine')
    [Environment]::SetEnvironmentVariable('PATH', "%JAVA_HOME%\bin;$envPath", 'Machine')
}
