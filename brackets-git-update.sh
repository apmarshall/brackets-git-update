#! bin/sh
# brackets-git-update
# Recommended set-up: symlink [path/to/brackets-git-update.sh] usr/local/bin/brackets-git-update

# Path for Brackets and Brackets-Shell - maker sure these match the path in your set-up.

BRACKETS=${HOME}/Code/Brackets/brackets
BSHELL=${HOME}/Code/Brackets/brackets-shell

# Get Updates For Both Repositories

REPOS=[$BRACKETS, $BSHEL]

For i in $REPOS do
  cd $REPOS[$i]
  git fetch upstream
  git merge upstream/master
  git submodule update
done

# Rebuild Brackets-Shell

cd $BSHELL
grunt build
symlink xcodebuild/Release/Brackets.app Applications/Brackets.app

# Reconnect Brackets-Shell to Brackets - this step may not be needed

cd $BRACKETS
tools/setup_for_hacking.sh

exit 0
