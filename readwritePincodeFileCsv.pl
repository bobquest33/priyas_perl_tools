my $tabFile = "C:\\Documents and Settings\\1354809\\My Documents\\Downloads\\IN\\Copy of IN.txt";
my $csvFile = "C:\\Documents and Settings\\1354809\\My Documents\\Downloads\\IN\\IN.csv";
open (INFILE, "$tabFile") or die "\nERROR: Cannot open the file \"$tabFile\". Check to see if it exists in the current directory.\n";
open (OUTFILE, '>', "$csvFile") or die "\nERROR: Cannot open the file \"$csvFile\". Check to see if it exists in the current directory.\n";

print OUTFILE "country_code,postal_code,place_name,admin_name1,admin_code1,admin_name2,admin_code2,admin_name3,admin_code3,latitude,longitude,accuracy\n";

while (<INFILE>) {
($country_code,	
$postal_code,	
$place_name,	
$admin_name1,	
$admin_code1,	
$admin_name2,	
$admin_code2,	
$admin_name3,	
$admin_code3,	
$latitude,
$longitude,	
$accuracy
) = split('\t');

print "$country_code,$postal_code,$place_name,$admin_name1,$admin_code1,$admin_name2,$admin_code2,$admin_name3,$admin_code3,$latitude,$longitude,$accuracy\n";
print OUTFILE "$country_code,$postal_code,$place_name,$admin_name1,$admin_code1,$admin_name2,$admin_code2,$admin_name3,$admin_code3,$latitude,$longitude,$accuracy";
}