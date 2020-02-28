#!/bin/bash

#delete all column (11, 13, 17, 21) complement
#change field separator to "|"
#save output to selected.csv
awk '
BEGIN{
	FS=",";
}
{
	if(NR != 1){
		printf("%s|%s|",$13,$11);
		for(i=17; i<(NF-3); i++){
			printf("%s",$i);
		}
		printf("|%s\n",$NF);
	}
}' Sample-Superstore.csv &> selected.csv

#sum profit group by region
#print the order
#sort by profit in ascending order
#select top order

echo -e "Top 1 Region in United States\nwith the least profit is:"
awk '
BEGIN{
	FS="|";RS="\n";
}
{
	reg[$1]+=$4;
}
END{	
	for(i in reg){
		printf("%d -%s\n",reg[i],i);
	}
}' selected.csv | sort -gk1 | cut -d " " -f2 | head -n1

#check if region is Central
#sum profit group by state
#print the order
#sort by profit in ascending order
#select top 2 order

echo -e "\nTop 2 states in Central region\nwith the least profit are:"
awk '
BEGIN{
	FS="|";RS="\n";
}
{	
	if($1 == "Central"){
		sta[$2]+=$4;
	}
}
END{
	for(i in sta){
		printf("%d -%s\n",sta[i],i);
	}
}' selected.csv | sort -gk1 | cut -d " " -f1 --complement | head -n2

#check if state is Texas or Illinois
#sum profit group by product name
#print the order
#sort by profit in ascending order
#select top 10 order
echo -e "\nTop 10 in Texas and Illinois states\nwith the least profit are:"
awk '
BEGIN{
	FS="|";RS="\n";
}
{	
	if((($1 == "Central") && ($2 == "Texas")) || (($1 == Central) && ($2 == "Illinois"))){
		pro[$3]+=$4;
	}
}
END{
	for(i in pro){
		printf("%d -%s\n",pro[i],i);
	}
}' selected.csv | sort -gk1 | cut -d " " -f1 --complement | head -n10

#remove temporary file selected.csv
rm selected.csv
