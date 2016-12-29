function print
{
	if [ $# -eq 1 ]
	then
		echo $1
	else
		echo "Please only provide a string that you need to print"
		echo "USAGE:"
		echo "		print \"String you want to print\""
		exit 11
	fi
}

function loadConfigurationVariable
{
	if [ $# -eq 2 ]
	then
		FILE_PATH_TO_VALIDATE=$(echo ${1} | tr "${2}" "\n" | head -1)
		PATTERN_TO_VALIDATE=$(echo ${1} | tr "${2}" "\n" | head -2 | tail -1)
	
	else
		echo "USAGE:"
		echo "		split needs 2 parametes string to work on and delimiter"
		exit 11
	fi

}
