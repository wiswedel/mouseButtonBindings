#!/bin/bash

currentWindow=$(xdotool getactivewindow getwindowname)
inputKey=$1


case "$inputKey" in

    mouseWheelPress)
    
        case "$currentWindow" in
        
            *"Firefox"*)
                
                xte 'key F5' # reload page
            ;;
        
        esac    
    
    ;; # end of mouseWheelPress

#################################################################################################################
    
    mouseWheelRight)
    
        case "$currentWindow" in
        
            *"Kate"*)
                
                xte 'keydown Alt_L' 'key Right' 'keyup Alt_L' # next tab
            ;;
            
            *"Firefox"*)
            
                xte 'keydown Control_L' 'key Tab' 'keyup Control_L' # next tab
            ;;
            
            *"KMail"*)
                
                xte 'key Right' # next message
            ;;            
        
        esac
        
    ;; # end of mouseWheelRight
    
#################################################################################################################
    
    mouseWheelLeft)
    
        case "$currentWindow" in
        
            *"Kate"*)
                
                xte 'keydown Alt_L' 'key Left' 'keyup Alt_L' # previous tab
            ;;
            
            *"Firefox"*)
            
                xte 'keydown Control_L' 'keydown Shift_L' 'key Tab' 'keyup Shift_L' 'keyup Control_L' # previous tab
            ;;
            
            *"KMail"*)
                
                xte 'key Left' # previous message
            ;;
        
        esac
        
    ;; # end of mouseWheelLeft
    
#################################################################################################################
    
    thumbLower)
    
        case "$currentWindow" in
            
            *"Firefox"*)
            
                xte 'keydown Alt_L' 'key Left' 'keyup Alt_L' # back
            ;;
            
            *"KMail"*)
                
                 xte 'key a' # reply to all
            ;;
            
        esac
    
    ;; # end of thumbLower
    
#################################################################################################################
    
    thumbUpper)
    
        case "$currentWindow" in
            
            *"KMail"*)
                
                 xte 'key Delete' # delete message
            ;;
            
            
            *)
            
                xte 'keydown Control_L' 'key w' 'keyup Control_L' # close current window
            ;;
        
        esac
    
    ;; # end of thumbUpper
    
esac
