
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

