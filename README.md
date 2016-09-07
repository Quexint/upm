# upm

Update all package managers in one command.

## Installation

- Download: `wget https://raw.githubusercontent.com/Quexint/upm/master/upm.sh ~/upm.sh`
- Change file mode: `sudo chmod a+x ~/upm.sh`
- Run: `~/upm.sh`

## Support

### Binary Package Managers

Root | Application | For | Commands
---|---|---|---
* | Advanced Packaging Tool | Linux | `sudo apt-get update; sudo apt-get upgrade;`
  | fink | macOS | `fink selfupdate; fink update-all;`
  | Homebrew | macOS | `brew update; brew upgrade; brew cleanup;`
  | Homebrew Caskroom | macOS | `brew cask update; brew cask cleanup;`
  | Nix | Linux / macOS | `nix-channel --update nixpkgs; nix-env -u '*';`
* | Mac App Store | macOS | `sudo softwareupdate -i -a;`
* | MacPorts | macOS | `sudo port selfupdate; sudo port upgrade outdated;`
  | Urpmi | Linux | `urpmi.update -a; urpmi --auto-select;`
* | Yellowdog Updater, Modified (yum) | Linux | `sudo yum update; sudo yum upgrade;`

### Application-level package managers

Root | Application | For | Commands
---|---|---|---
  | Anaconda | Python | `conda update conda; conda update anaconda;`
  | Cabal | Haskell | `cabal update;`
  | Gopm | Go | `gopm update;`
  | npm | Node.js | `npm install npm -g; npm update -g;`
  | PEAR | PHP | `pear upgrade-all;`
  | pip | Python | `pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U;`
  | pip3 | Python | `pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U;`
  | RubyGems | Ruby | `gem update --system; gem update;`
* | TexLive | TeX | `sudo tlmgr update --all;`

### Project Package Managers (Not Supported)

Application | Commands
---|---
Bower | `bower update;`
Bundler | `bundle update;`
CocoaPods | `pods update;`
Composer | `composer update;`
Maven | `mvn clean install;`
npm | `npm update;`

## References

- [List of Software Package Management Systems on Wiki](https://en.wikipedia.org/wiki/List_of_software_package_management_systems)
