#!/usr/bin/env bash

PASSM="$HOME/.ramdisk/.password_manager"
if [[ "$PWD" =~ TzAiOv2$ ]] && [[ -f "$PASSM" ]]
	then
	rsyncWeb () {
		local SSHHOME=$(bash "$PASSM" "binero-ssh-path")
		local SSHUSER=$(bash "$PASSM" "binero-ssh-user")
		local SSHURL=$(bash "$PASSM" "binero-ssh-url")
		rsync --verbose --progress --stats --times --recursive --perms --delete --copy-links \
			--exclude ".*" --exclude "build.sh" --exclude "*sublime*" -e ssh "$PWD/" \
			"$SSHUSER""@""$SSHURL"":""$SSHHOME""/elundmark.se/public_html/_files/js/tz-aio/"
	}
	sassCompile () {
		local WORKDIR="$PWD"
		echo "\$ compass compile ""$WORKDIR/source"
		cd "$WORKDIR/source" && compass compile --force "$PWD"
		cd "$WORKDIR"
		# Now hosted by jsdelivr.net
		# cat "$PWD/source/css/spectrum.css" "$PWD/tz-aio-style-2.css" > "$PWD/tz-aio-style-2.css.bak"
		# rm "$PWD/tz-aio-style-2.css"; mv -f "$PWD/tz-aio-style-2.css.bak" "$PWD/tz-aio-style-2.css"
	}
	gitCommit () {
		echo -n "Version release number?: "
		read gitversionnumber
		echo -n "Enter a description for the commit: "
		read gitcommitmsg
		if [[ "$gitversionnumber" =~ [0-9.]+ ]]
			then
			gitcommitmsg="v$gitversionnumber $gitcommitmsg"
		fi
		read -p "Is '""$gitcommitmsg""' correct? (y/n): " CONT
		if [[ $? -eq 0 ]] && [[ "$CONT" = "y" ]] || [[ -z $CONT ]] || [[ "$CONT" = "" ]]
			then
			echo "\$ git add . --all; git commit -am ""$gitcommitmsg""; git push origin master"
			git add --all .
			git commit -am "$gitcommitmsg"
			git push origin master
			if [[ "$gitversionnumber" =~ [0-9.]+ ]] ; then
				git tag "$gitversionnumber"
				git push --tags origin master
			fi
		else
			echo "Exiting..."
			exit 1
		fi
	}
	reminder=$'\n'"Done."$'\n'"Did you remember to update all version info?"$'\n'
	if [[ $# -eq 1 ]] && ( [[ "$1" = "all" ]] || [[ "$1" = "publish" ]] )
		then
		sassCompile
		gitCommit
		rsyncWeb
		echo "$reminder" 1>&2
		sleep 2
		exit 0
	elif [[ $# -ge 1 ]]
		then
		for str_arg in "$@"
		do
			if [[ "$str_arg" = "sass" ]] || [[ "$str_arg" = "scss" ]] || [[ "$str_arg" = "css" ]]
				then
				sassCompile
			elif [[ "$str_arg" = "git" ]] || [[ "$str_arg" = "commit" ]]
				then
				gitCommit
			elif [[ "$str_arg" = "sftp" ]] || [[ "$str_arg" = "upload" ]]
				then
				rsyncWeb
			fi
		done
		echo "$reminder" 1>&2
		sleep 2
		exit 0
	else
		echo "Missing commandline argument[s]" 1>&2
		exit 1
	fi
else
	exit 1
fi
