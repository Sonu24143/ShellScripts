#!/bin/sh

APP_HOME=`dirname ${0}`
APPSONE_HOME="/usr/local/appnomic/appsone/current/"
. ${APP_HOME}/lib/my_utilities.sh
. ${APP_HOME}/lib/utilities.sh
CONFIG_FILE="${APP_HOME}/conf/lookup_values.cfg"


#GLOBAL VARIABLES
FILE_PATH_TO_VALIDATE=""
PATTERN_TO_VALIDATE=""

function validateParameters
{

DELIMITER_PATTERN='|'
while read configuration;
do
	if [ "${configuration}" == "" ]
	then
	echo "FILENAME:     ${FILE_PATH_TO_VALIDATE}"
	echo "" ; echo "" ; echo ""
	continue
	fi
loadConfigurationVariable ${configuration} ${DELIMITER_PATTERN}
getConfigurationValues ${APPSONE_HOME}${FILE_PATH_TO_VALIDATE} ${PATTERN_TO_VALIDATE}
done < ${CONFIG_FILE} 
}

function Main
{
validateParameters
}

Main
