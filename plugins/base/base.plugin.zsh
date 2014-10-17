alias ls="ls -hlG"
alias cp="cp -rv"
alias rm="rm -rv"
alias mv="mv -v"
alias subl="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"

function cl () {
    if [ $# = 0 ]; then
		cd && ls
	else
		cd "$*" && ls
	fi
}

function find-class() {
	for i in `find . -name '*.jar'`; do
		echo $i
		jar tf $i | grep --color=always ${1}
		echo
	done
	for i in `find . -name '*.zip'`; do
		echo $i
		unzip -l $i | grep --color=always ${1}
		echo
	done
}

zle -N cl
