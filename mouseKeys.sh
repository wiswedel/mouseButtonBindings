#!/bin/bash

currentWindow=$(xdotool getactivewindow getwindowname)
inputKey=$1

if [[ $inputKey == "mouseWheelPress" ]];
then

  if [[ $currentWindow =~ "Firefox" ]];
   then
      xte 'key F5' # reload page

   fi


elif [[ $inputKey == "mouseWheelRight" ]];
then

   if [[ $currentWindow =~ "Firefox" ]];
   then
      xte 'keydown Control_L' 'key Tab' 'keyup Control_L' # next tab

   elif [[ $currentWindow =~ "KMail" ]];
   then
      xte 'key Right' # next message

   fi

elif [[ $inputKey == "mouseWheelLeft" ]];
then

   if [[ $currentWindow =~ "Firefox" ]];
   then
      xte 'keydown Control_L' 'keydown Shift_L' 'key Tab' 'keyup Shift_L' 'keyup Control_L' # previous tab

   elif [[ $currentWindow =~ "KMail" ]];
   then
      xte 'key Left' # previous message

   fi

elif [[ $inputKey == "thumbLower" ]];
then

   if [[ $currentWindow =~ "Firefox" ]];
   then
      xte 'keydown Alt_L' 'key Left' 'keyup Alt_L' # back

   elif [[ $currentWindow =~ "KMail" ]];
   then
      xte 'key a' # reply to all

   fi

elif [[ $inputKey == "thumbUpper" ]];
then

   if [[ $currentWindow =~ "Firefox" ]];
   then
      xte 'keydown Control_L' 'key w' 'keyup Control_L' # close current window

   elif [[ $currentWindow =~ "KMail" ]];
   then
      xte 'key Delete' # delete message

   fi



fi


