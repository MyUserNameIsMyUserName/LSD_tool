#!/bin/bash
# CONFIG ITEMS
RUNNINGFILE=_running.conf

# Ask the user for login details
read -p 'Branch to use : ' branchvar
read -sp 'Password/Keyphrase : ' keyphrasevar
echo ''
echo "Thank you, user: $branchvar :pass: $keyphrasevar ;"

if test -f "$RUNNINGFILE"; then
    echo "Previous config $RUNNINGFILE exists. Removing before creation of current."
    echo $(rm -f $RUNNINGFILE)
fi

echo "BRANCHNAME="$branchvar >>"$RUNNINGFILE"
echo "KEYPHRASE="$keyphrasevar >>"$RUNNINGFILE"

cat $RUNNINGFILE
