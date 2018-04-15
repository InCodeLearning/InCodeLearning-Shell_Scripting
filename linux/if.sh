echo "Which is your favorite shell?"
select choice in "zsh" "csh" "bash"; do
    if [ "$choice" = "zsh" ] ; then
        echo "You like zsh" ; break;
    elif [ "$choice" = "csh" ] ; then
        echo "You like csh" ; break;
    elif [ "$choice" = "bash" ] ; then
        echo "You like bash" ; break;
    else
        echo "Please select 1-3.";
    fi
done 

# $'' C style escaping
read -p $'Do you like zsh or bash?\n' zb
if [ $zb = "zsh" ] || [ $zb = "bash" ]; then
    echo "both are great."
fi
