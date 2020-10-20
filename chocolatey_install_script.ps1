function Install-Chocolatey {
    Set-ExecutionPolicy Bypass -Scope Process -Force;
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

function Install-FromChocolatey {
    param(
        [string]
        [Parameter(Mandatory = $true)]
        $PackageName
    )

    choco install $PackageName --yes
}

Install-Chocolatey

# Guide: for add more packages use: https://chocolatey.org/

#Essentials:

## Programming/development:
Install-FromChocolatey 'vscode'
#Install-FromChocolatey 'wsl2'
# Install-FromChocolatey 'docker-desktop'
Install-FromChocolatey 'git.portable'
Install-FromChocolatey 'github-desktop'
#Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/frycast/system-init/master/common/.gitconfig' -OutFile (Join-Path $env:USERPROFILE '.gitconfig')
# Install-FromChocolatey 'git-lfs'
Install-FromChocolatey 'microsoft-windows-terminal'
Install-FromChocolatey 'r'
Install-FromChocolatey 'r.studio'
Install-FromChocolatey 'anaconda3'
Install-FromChocolatey 'julia'
# Install-FromChocolatey 'golang'

### Databases:
# Install-FromChocolatey 'mongodb.portable' # many other mongodb extensions: https://chocolatey.org/packages?q=mongodb
# Install-FromChocolatey 'sqlite'
# Install-FromChocolatey 'sqlite.analyzer'; Install-FromChocolatey 'sqlite-studio.portable'; Install-FromChocolatey 'sqlitebrowser.portable'
# Install-FromChocolatey 'postgresql'; Install-FromChocolatey 'pgadmin4'; Install-FromChocolatey 'postgis-9.3'
# 

### Other:
# Install-FromChocolatey 'msvisualcplusplus2013-redist' # May need to move?
# Install-FromChocolatey 'qgis'


##Utilities:
Install-FromChocolatey 'firefox'
Install-FromChocolatey 'googlechrome'
# Install-FromChocolatey 'ungoogled-chromium'
# Install-FromChocolatey 'tor-browser'
Install-FromChocolatey 'putty.portable'
# Install-FromChocolatey 'directoryopus'


##Comms:
Install-FromChocolatey 'discord'
Install-FromChocolatey 'signal'
# Install-FromChocolatey 'slack'
# Install-FromChocolatey 'zoom'
# Install-FromChocolatey 'powertoys'
# Install-FromChocolatey 'jabref'


#Non-essentials:
## Utilities:
# Install-FromChocolatey 'notion'
# Install-FromChocolatey 'everything'
# Install-FromChocolatey 'wiztree'
# Install-FromChocolatey 'adobereader'
# Install-FromChocolatey 'sharex'
# Install-FromChocolatey 'joplin'
# Install-FromChocolatey 'zim' # Personal desktop wiki
# Install-FromChocolatey '7zip'
# Install-FromChocolatey 'patch-my-pc'
# Install-FromChocolatey 'irfanview'
# Install-FromChocolatey 'irfanviewplugins'
# Install-FromChocolatey 'autohotkey.portable'
# Install-FromChocolatey 'notepadplusplus'
# Install-FromChocolatey 'displayfusion'
# Install-FromChocolatey 'zotero'
# Install-FromChocolatey 'bitwarden'
# Install-FromChocolatey 'wox'
# Install-FromChocolatey 'megasync'
# Install-FromChocolatey 'thunderbird'
# Install-FromChocolatey 'youtube-dl'
# Install-FromChocolatey 'ffmpeg'
# Install-FromChocolatey 'teracopy'
# Install-FromChocolatey 'veracrypt'
# Install-FromChocolatey 'foxitreader'
# Install-FromChocolatey 'qbittorrent'
# Install-FromChocolatey 'freefilesync'
# Install-FromChocolatey 'dupeguru'
# Install-FromChocolatey 'hwinfo.portable'
# Install-FromChocolatey 'gpu-z'
# Install-FromChocolatey 'cpu-z.portable'
# Install-FromChocolatey 'speccy'
# Install-FromChocolatey 'plasso'  # Process lasso
# Install-FromChocolatey 'hydrus-network'
# Install-FromChocolatey 'jdownloader'
# Install-FromChocolatey 'audacity'
# Install-FromChocolatey 'handbrake.portable'
# Install-FromChocolatey 'rclone'
# Install-FromChocolatey 'rclonebrowser'

# Learning:
# Install-FromChocolatey 'geogebra'

## Media:
# Install-FromChocolatey 'musicbee'
# Install-FromChocolatey 'potplayer'
# Install-FromChocolatey 'vlc'

## Entertainment:
# Install-FromChocolatey 'calibre'

## Games:
# Install-FromChocolatey 'nmm' # Nexus mod manager
# Install-FromChocolatey 'playnite'
# Install-FromChocolatey 'steam'

### Utilities:
# Install-FromChocolatey 'nvidia-profile-inspector'
# Install-FromChocolatey 'msiafterburner'


# Non-Chocolatey:
# Ubuntu - Install from windows store
# Draw io desktop - install from online
# Git Bash
# Riva Tuner Statistics


