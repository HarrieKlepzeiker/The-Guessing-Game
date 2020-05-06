clear
echo "Guess, how many files are in the  current directory / hoeveel files zijn in de huidige directory ? "
read files_guess

function getFilesDir {
	local aux=$(ls -l | wc -l)-1
	echo $aux
}

files_dir=$(getFilesDir)

while [[ $files_guess -ne $files_dir ]]
do
	if [[ files_guess -lt files_dir ]]
	then
		echo "Try a higher number / probeer een hoger nummer."
	else
		echo "Try a lower number / probeer een lager nummer."
	fi
	echo  "Please, repeat the quantity / probeer het nogmaals: "
	read files_guess
done

echo "Ok. The answer is correct / dit is het juiste antwoord."