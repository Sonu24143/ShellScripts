

colorPrint()
{
COMMON='\033[0;'
RED='31m'
BLACK='30m'
GREEN='32m'
ORANGE='33m'
BLUE='34m'
PURPLE='35m'
CYAN='36m'
NC='\033[0m'
COLOR=$1
TEXT=$2

if [ ${COLOR} == "RED" -o ${COLOR} == "red" -o ${COLOR} == "Red" ]
then
	printf "${COMMON}${RED} ${TEXT} ${NC}\n"
	return

elif [ ${COLOR} == "BLACK" -o ${COLOR} == "black" -o ${COLOR} == "Black" ]
then
        printf "${COMMON}${BLACK} ${TEXT} ${NC}\n"
        return

elif [ ${COLOR} == "GREEN" -o ${COLOR} == "green" -o ${COLOR} == "Green" ] 
then
        printf "${COMMON}${GREEN} ${TEXT} ${NC}\n"
        return

elif [ ${COLOR} == "ORANGE" -o ${COLOR} == "orange" -o ${COLOR} == "Orange" ]
then
        printf "${COMMON}${ORANGE} ${TEXT} ${NC}\n"
        return

elif [ ${COLOR} == "BLUE" -o ${COLOR} == "blue" -o ${COLOR} == "Blue" ]
then
        printf "${COMMON}${BLUE} ${TEXT} ${NC}\n"
        return

elif [ ${COLOR} == "PURPLE" -o ${COLOR} == "purple" -o ${COLOR} == "Purple" ]
then
        printf "${COMMON}${PURPLE} ${TEXT} ${NC}\n"
        return

elif [ ${COLOR} == "CYAN" -o ${COLOR} == "cyan" -o ${COLOR} == "Cyan" ]
then
        printf "${COMMON}${CYAN} ${TEXT} ${NC}\n"
        return

else
	echo "Colour: ${COLOR} is not supported"
	return

fi

}
