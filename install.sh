#! /bin/bash
#loadkeys dvorak
#ip a
#dialog --clear --backtitle "Backtitle here" --title "Title here" --menu "Choose one of the following options:" 15 40 4 \
#1 "Option 1" \
#2 "Option 2" \
#3 "Option 3"
PS3='Please enter your choice: '
options=("Option 1" "Option 2" "Option 3" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Option 1")
            echo "you chose choice 1"
            ;;
        "Option 2")
            echo "you chose choice 2"
            ;;
        "Option 3")
            echo "you chose choice $REPLY which is $opt"
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
