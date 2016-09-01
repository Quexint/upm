#!/usr/bin/env bash

#
# Function
#

preprocess()
{
  echo "upm is running..."
}

postprocess()
{
#  say "Mission Completed" # Speaking text in MacOS
  echo "Done!"
}

function is_exist()
{
  which $1 &>/dev/null
}

function run_command()
{
  eval "$1"
}

UPM_APT="sudo apt-get update; sudo apt-get upgrade;"
UPM_Fink="fink selfupdate; fink update-all;"
UPM_Brew="brew update; brew upgrade; brew cleanup;"
UPM_Nix="nix-channel --update nixpkgs; nix-env -u '*';"
UPM_MAS="sudo softwareupdate -i -a;"
UPM_MacPorts="sudo port selfupdate; sudo port upgrade outdated;"
UPM_Urpmi="urpmi.update -a; urpmi --auto-select;"
UPM_Yum="sudo yum update; sudo yum upgrade;"

UPM_Conda="conda update conda; conda update anaconda;"
UPM_Cabal="cabal update;"
UPM_Gopm="gopm update;"
UPM_Npm="npm install npm -g; npm update -g;"
UPM_Pear="pear upgrade-all;"
UPM_Pip="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U;"
UPM_Pip3="pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U;"
UPM_RubyGem="gem update --system; gem update;"
UPM_TexLive="sudo tlmgr update --all;"

#
# Main
#

preprocess

is_exist apt-get && echo "===== Updating APT =====" && run_command "$UPM_APT"
is_exist fink && echo "===== Updating Fink =====" && run_command "$UPM_Fink"
is_exist brew && echo "===== Updating Homebrew =====" && run_command "$UPM_Brew"
is_exist nix-channel && echo "===== Updating Nix =====" && run_command "$UPM_Nix"
is_exist softwareupdate && echo "===== Updating Mac App Store =====" && run_command "$UPM_MAS"
is_exist port && echo "===== Updating MacPorts =====" && run_command "$UPM_MacPorts"
is_exist urpmi && echo "===== Updating urpmi =====" && run_command "$UPM_Urpmi"
is_exist yum && echo "===== Updating yum =====" && run_command "$UPM_Yum"

is_exist conda && echo "===== Updating Conda =====" && run_command "$UPM_Conda"
is_exist cabal && echo "===== Updating Cabal =====" && run_command "$UPM_Cabal"
is_exist gopm && echo "===== Updating GoPM =====" && run_command "$UPM_Gopm"
is_exist npm && echo "===== Updating npm =====" && run_command "$UPM_Npm"
is_exist pear && echo "===== Updating Pear =====" && run_command "$UPM_Pear"
is_exist pip && echo "===== Updating pip =====" && run_command "$UPM_Pip"
is_exist pip3 && echo "===== Updating pip3 =====" && run_command "$UPM_Pip3"
is_exist gem && echo "===== Updating RubyGem =====" && run_command "$UPM_RubyGem"
is_exist tlmgr && echo "===== Updating TexLive =====" && run_command "$UPM_TeXxLive"

postprocess

