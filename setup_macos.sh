#!/bin/env sh

checkit() {
    prog_name=${1}
    inst_name=${2:-"$1"}
    eval_name=${3:-"brew install"}
    echo "Installing $prog_name -> $eval_name $inst_name"
    echo "eval $eval_name $inst_name"
    # if [ -z $3 ]: then
    #     which -s $1 && brew install ${2:"$1"}
    # else
    #     eval "$3 $1 $2"
    # fi
}

# install or update Homebrew
which -s brew && /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" || brew update

# install prerequisites
checkit clojure
checkit lein leiningen
checkit npm
checkit git
checkit hub

# which -s brew && /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" || brew update
# which -s clojure && brew install clojure
# which -s lein && brew install leiningen
# which -s npm && brew install npm




# run this terminal command to make sure npm global repo permissions are sufficient:
# chown -R $(whoami):staff $(npm root -g)
