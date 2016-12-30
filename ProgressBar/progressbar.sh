
#This is a helper function which shows a simple progress bar that
#you can include in any of your scripts
#
#
#Usage:
#	showProgress <current_value> <max_value>
#	current_value: the SI.no of current value its processing
#	max_value: The max number of values that needs processing

function showProgress
{
cur=$1
max=$2
percent_complete=$(( (${cur} *100) / ${max} ))
bar=""
for i in `seq 1 ${percent_complete}`;
do
	bar=${bar}"#"
done
echo -ne "( ${percent_complete}% ): ${bar}\r"
if [ ${percent_complete} -eq 100 ]
then
echo -ne "\n"
fi
}

