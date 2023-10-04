oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\thecyberden.omp.json" | Invoke-Expression
Import-Module posh-git

$env:FZF_DEFAULT_COMMAND="fd --type f"
$env:FZF_CTRL_T_COMMAND="fd --type f"
$env:FZF_ALT_C_COMMAND="fd --type d"

function cdFzf {
    $path = fzf
    if ([string]::IsNullOrEmpty($path))
    {
    }
    else
    {
        cd "$(Split-Path -Parent $path)"
    }
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
    git log --graph --oneline --decorate=full --date=iso --format="%C(yellow)%h%C(reset) %C(magenta)[%ad]%C(reset)%C(auto)%d%C(reset) %s %C(cyan)@%an%C(reset)" $args
}

# Show only the log of the current branch.
function gitgg {
    gitg --first-parent --no-merges
}

# Show diff between current branch and master branch.
function gitdiff {
    git diff origin/master --name-only
}

# Delete all local branch (except current branch)
function gitbd {
    git branch | % {if($_[0] -eq " "){($_ -Split " ")[2]}} | % {git branch -D $_}
}

function compVideo1280 {
    ffmpeg -i input.mp4 -c:a libopus -c:v libx265 -crf 31 -r 29.97 -tag:v hvc1 -vf scale=1280:720 output.mp4
}

function compVideoFull {
    ffmpeg -i input.mp4 -c:a libopus -c:v libx265 -crf 31 -r 29.97 -tag:v hvc1 output.mp4
}

