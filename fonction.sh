search()
{
	find . -type f -executable
}

searchrm()
{
	find . -maxdepth 1 -type f -executable -exec rm {} +
}

searchls()
{
	find . -type f -executable -ls
}

calculatexec()
{       
	nbrexec=$(find . -type f -executable |wc -l)
}

per()
{
	echo "le nombre de tous les fichiers :" $(find . -type f | wc -l)
	echo "le nombre de tous les fichiers executables :" $(find . -type f -executable |wc -l)
	printf "La pourcentage des fichiers executables est  :%2.2f%%\n" $(echo "scale=5; ((($(find . -type f -executable |wc -l)/$(find . -type f | wc -l))*100)) " | bc )
}

ss()
{
	d=$(date)
	printf "$d        %2.2f%%\n" $(echo "scale=5; ((($(find . -type f -executable |wc -l)/$(find . -type f | wc -l))*100)) " | bc ) > pourcentageExec.txt
}
