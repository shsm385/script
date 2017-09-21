# Homebrew
if ! command -v brew > /dev/null; then
    ruby -e "$(curl -fsSL https://raw.githubsercontent.com//Homebrew/install/master/install)"
fi

brew update
brew upgrade

# brew-file
brew install argon/mas/mas
brew install rcmdnk/file/brew-file

cp -r ./.brewfile ~/.brewfile/Brewfile

brew file install

# brew cask install
apps=(
  atom
  evernote
  java
  skype
  dropbox
  vlc
  firefox
  franz
)

echo "installing apps..."
brew cask install ${apps[@]}

