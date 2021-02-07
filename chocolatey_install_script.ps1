$essentials = @(
## Programming/development:
'vscode',
'git.portable',
'github-desktop',
'microsoft-windows-terminal',
'r',
'r.studio',
'anaconda3',
'julia',

##Utilities:
'firefox',
'googlechrome',
'putty.portable',
'vim'
)

$other = @(
## Programming/development:
'wsl2',
'docker-desktop',
'autohotkey.portable',
#Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/frycast/system-init/master/common/.gitconfig' -OutFile (Join-Path $env:USERPROFILE '.gitconfig'),
'git-lfs',
'golang',
'mingw',
'javaruntime',
'openjdk',
'openjdk11',
'sbt',

### Databases:
# 'mongodb.portable', # many other mongodb extensions: https://chocolatey.org/packages?q=mongodb
# 'sqlite',
# 'sqlite.analyzer'; 'sqlite-studio.portable'; 'sqlitebrowser.portable',
# 'postgresql'; 'pgadmin4'; 'postgis-9.3',

### Other:
# 'msvisualcplusplus2013-redist', # May need to move?

## GIS:
# 'qgis',
# 'lastools',
# 'inkscape'

##Utilities:
# 'ungoogled-chromium',
# 'tor-browser',
# 'directoryopus',

##Comms:
'discord',
'signal'
# 'slack',
# 'zoom',

#Non-essentials:
## Utilities:
# 'evernote',
# 'notion',
# 'everything',
# 'wiztree',
# 'adobereader',
# 'sharex',
# 'joplin',
# 'zim' # Personal desktop wiki,
# '7zip',
# 'patch-my-pc',
# 'irfanview',
# 'irfanviewplugins',
# 'notepadplusplus',
# 'displayfusion',
# 'zotero',
# 'bitwarden',
# 'wox',
# 'megasync',
# 'thunderbird',
# 'youtube-dl',
# 'ffmpeg',
# 'teracopy',
# 'veracrypt',
# 'foxitreader',
# 'qbittorrent',
# 'freefilesync',
# 'dupeguru',
# 'hwinfo.portable',
# 'gpu-z',
# 'cpu-z.portable',
# 'speccy',
# 'plasso'  # Process lasso,
# 'hydrus-network',
# 'jdownloader',
# 'audacity',
# 'handbrake.portable',
# 'rclone',
# 'rclonebrowser',
# 'powertoys',
# 'jabref',

## Learning:
# 'geogebra',

## Media:
# 'musicbee',
# 'potplayer',
# 'vlc',

## Entertainment:
# 'calibre',

## Games:
# 'nmm', # Nexus mod manager
# 'playnite',
# 'steam',

### Utilities:
# 'nvidia-profile-inspector',
# 'msiafterburner',
)

function Install-Chocolatey {
    Set-ExecutionPolicy Bypass -Scope Process -Force;
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;
    iex ((New-Object System.Net.WebClient).DownloadString('https://github.com/SympleScience/system-init-config/blob/main/chocolatey_install_script.ps1'))
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
$essentials | ForEach-Object { Install-FromChocolatey $_ }
$other | ForEach-Object { Install-FromChocolatey $_ }
# Guide: for add more packages use: https://chocolatey.org/

# Non-Chocolatey apps:
# Ubuntu - Install from windows store
# Draw io desktop - install from online
# Git Bash
# Riva Tuner Statistics
# reWASD


