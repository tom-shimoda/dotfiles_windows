oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\thecyberden.omp.json" | Invoke-Expression

$env:FZF_DEFAULT_COMMAND="fd --type f"
$env:FZF_CTRL_T_COMMAND="fd --type f"
$env:FZF_ALT_C_COMMAND="fd --type d"

function cdFzf {
    cd "$(Split-Path -Parent $(fzf))"
}
sal cdd cdFzf

function lsOrderByName {
    Get-ChildItem -force | Sort-Object -Property Name
}
sal ll lsOrderByName

function openExplorer {
    start .
}
sal here openExplorer

function gitg {
    git log --graph --oneline --decorate=full --date=short --format="%C(yellow)%h%C(reset) %C(magenta)[%ad]%C(reset)%C(auto)%d%C(reset) %s %C(cyan)@%an%C(reset)" $args
}

function gitgg {
    gitg --first-parent --no-merges
}

# Delete all local branch (except current branch)
function gitbd {
    git branch | % {if($_[0] -eq " "){($_ -Split " ")[2]}} | % {git branch -D $_}
}
