# Path to your oh-my-zsh installation.
export ZSH=/Users/anzumana/.oh-my-zsh
export VIMRUNTIME=/usr/local/share/vim/vim80
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_CUSTOM=$HOME/Dropbox/Mackup/oh-my-zsh-custom
ZSH_THEME="anzumana"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Applications/Server.app/Contents/ServerRoot/usr/bin:/Applications/Server.app/Contents/ServerRoot/usr/sbin:/usr/local/git/bin:/Users/anzumana/.rvm/bin:/Library/TeX/Root/bin/x86_64-darwin/:/usr/local/lib/node_modules"
# export MANPATH="/usr/local/man:$MANPATH"
export ANDROID_HOME='/Users/anzumana/Library/Android/sdk/'
export JAVA_HOME='/Library/Java/Home'
export PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"
export PATH="$HOME/.fastlane/bin:$PATH"
export JUNIT_HOME="/Users/anzumana/Dropbox/lib"
export CLASSPATH="$JUNIT_HOME/junit-4.12.jar:.:/Users/anzumana/Dropbox/lib"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
	 export EDITOR='vim'
 else
	 #export EDITOR='mvim' #assuming this should be mac vim pref terminal vim over it so :)
	 export EDITOR='vim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# [reload zshconfig](http://www.codem0nk3y.com/2012/12/how-to-reload-zsh-config/)
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"
alias zshrc="vim ~/.zshrc && reload"
alias vimrc="vim ~/.vimrc"
alias hyperrc="vim ~/.hyper.js"
alias hostrc="sudo vim /etc/hosts"
# My own
alias prog="cd  ~/Dropbox/uni/ws2015/programmiern_1"
alias javalib="cd  ~/Dropbox/lib/com/anzumana"
alias javahacking="cd  ~/Dropbox/hacking/java"
alias hide="defaults write com.apple.finder AppleShowAllFiles NO"
alias show="defaults write com.apple.finder AppleShowAllFiles YES"
alias sc2="/Users/anzumana/Library/Application\ Support/Blizzard/StarCraft\ II"
alias yd="youtube-dl -f mp4 "
alias mume="telnet mume.org 4242"
alias md="perl  ~/Dropbox/scripts/external/Markdown_1.0.1/Markdown.pl --html4tags "
alias nn="growl_notification"
alias jc="junit_compile"
alias je="junit_execute_tests"
alias simulator="open -n /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"
alias simulator71="open -n /Applications/Xcode/Xcode.app/Contents/Developer/Applications/iOS\ Simulator.app"
#alias pjavac ="javac -cp .:prog1javalib.jar"
#alias pjava ="java -cp .:prog1javalib.jar"
#slimerjs
export SLIMERJSLAUNCHER="/Applications/Firefox.app/Contents/MacOS/firefox"
eval "$(pyenv init -)"
alias tech="pdflatex  -synctex=1 -interaction=nonstopmode --src-specials Arbeit.tex ; bibtex Arbeit ; makeindex Arbeit.nlo -s nomencl.ist -o Arbeit.nls ; pdflatex  -synctex=1 -interaction=nonstopmode --src-specials Arbeit.tex ; pdflatex  -synctex=1 -interaction=nonstopmode --src-specials Arbeit.tex ; makeindex Arbeit.nlo -s nomencl.ist -o Arbeit.nls ; pdflatex  -synctex=1 -interaction=nonstopmode --src-specials Arbeit.tex"
alias clean="node clean.js"
alias draft="clean ; scrivener_copy;scrivener_copy_rename; tech;"
alias scrivener_copy_rename="node rename.js"
alias scrivener_copy="cp ~/Dropbox/projects/seminar/draft/Inhalt/scrivener/Draft/*.tex ~/Dropbox/projects/seminar/draft/Inhalt/scrivener/copy;"
alias server="sudo http-server ~/ -a localhost -p 80"
alias restartDns="sudo killall -HUP mDNSResponder"
alias authors="branch-authors.pl"
alias sshconfig="vim ~/.ssh/config"
alias sshrc="vim ~/.ssh/config"
alias postgres_start="pg_ctl -D /usr/local/var/postgres start"
alias postgres_stop="pg_ctl -D /usr/local/var/postgres stop"
alias mp3="youtube-dl --extract-audio --audio-format mp3"
alias gtags='find . -type f -iregex ".*\.js$" -not -path "./node_modules/*" -exec jsctags {} -f \; | sed "/^$/d" | sort > tags'
alias node7.6="~/Desktop/node-v7.6.0-darwin-x64/bin/node --debug-brk"
alias mongodb_start="mongod --config /usr/local/etc/mongod.conf"
#alias copy_rename =" (cd ~/Dropbox/projects/seminar/draft/Inhalt/scrivener/copy/; renamer --regex --find '(^..).*' --replace '$1.tex' *)"
#alias renamer_replace ='renamer --regex --find '"'"'(^..).*'"'"' --replace '"'"'$1.tex'"'"' *'
#alias renamer_replace ='renamer --regex --find '"'"'(^..).*'"'"' --replace '"'"'$1.tex'"'"' *'
#alias renamer_help="renamer --help"

source ~/.xsh

# ^Z to foreground the last suspended job.
foreground-current-job() { fg; }
zle -N foreground-current-job
bindkey -M emacs '^z' foreground-current-job
bindkey -M viins '^z' foreground-current-job
bindkey -M vicmd '^z' foreground-current-job

bindkey -v
export PATH="$HOME/Dropbox/scripts:$PATH"
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# added by travis gem
[ -f /Users/anzumana/.travis/travis.sh ] && source /Users/anzumana/.travis/travis.sh

export PATH="$HOME/.yarn/bin:$PATH"
export DYLD_FORCE_FLAT_NAMESPACE=1
