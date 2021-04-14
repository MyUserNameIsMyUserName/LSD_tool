#!/bin/bash
# Ask the user for login details
read -p 'Branch to use : ' branchvar
read -sp 'Password/Keyphrase : ' keyphrasevar
echo
echo Thankyou $branchvar :: $keyphrasevar we now have your login details

FILE=running.conf
if test -f "$FILE"; then
    echo "Previous config $FILE exists. Removing before creation of current."
    rm -f $FILE
fi

echo $branchvar >>running.conf
echo $keyphrasevar >>running.conf
