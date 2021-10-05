$env:XDG_DATA_HOME = ($env:XDG_DATA_HOME, "$env:APPDATA", 1 -ne $null)[0]
$env:XDG_CONFIG_HOME = ($env:XDG_CONFIG_HOME, "$LOCALAPPDATA", 1 -ne $null)[0]
$env:XDG_CACHE_HOME = ($env:XDG_CACHE_HOME, "$TEMP", 1 -ne $null)[0]

$env:ufovim_RUNTIME_DIR = ($env:ufovim_RUNTIME_DIR, "$env:XDG_DATA_HOME\ufovim", 1 -ne $null)[0]
$env:ufovim_CONFIG_DIR = ($env:ufovim_CONFIG_DIR, "$env:XDG_CONFIG_HOME\ufovim", 1 -ne $null)[0]
$env:ufovim_CACHE_DIR = ($env:ufovim_CACHE_DIR, "$env:XDG_CACHE_HOME\ufovim", 1 -ne $null)[0]

nvim -u "$env:ufovim_RUNTIME_DIR\ufovim\init.lua"
