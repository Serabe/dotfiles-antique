# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

JAVA_HOME=/usr/lib/jvm/java-6-sun-1.6.0.13/jre/
JRUBY_HOME=/home/sergio/Programming/projects/jruby
CLOJURE_HOME=/home/sergio/Programming/projects/clojure
LEININGEN_HOME=/home/sergio/Programming/projects/leiningen
GIT_ACHIEVEMENTS_HOME=/home/sergio/Programming/projects/git-achievements
PATH=$PATH:$JRUBY_HOME/bin:$LEININGEN_HOME/bin:$GIT_ACHIEVEMENTS_HOME
