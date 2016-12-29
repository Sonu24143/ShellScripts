
function getConfigurationValues
{
	if [ $# -eq 2 ]
	then
	FILENAME=${1}
	PATTERN=${2}
	#do something
	grep -w "${PATTERN}" ${FILENAME}
	else
		print "USAGE:"
		print "		getCurrentConfigurations \$FILENAME \$PATTERN"
	fi

}
