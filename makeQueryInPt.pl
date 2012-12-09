my $tabFile = "bp.ip";
my $csvFile = "bp.op";
open (INFILE, "$tabFile") or die "\nERROR: Cannot open the file \"$tabFile\". Check to see if it exists in the current directory.\n";
open (OUTFILE, '>', "$csvFile") or die "\nERROR: Cannot open the file \"$csvFile\". Check to see if it exists in the current directory.\n";

print OUTFILE "(\n";

while (<INFILE>) {
$record = $_;
chomp($record);
#print "$record,\n";
#print OUTFILE "$record* ";
print OUTFILE "\'$record\',\n";
#print OUTFILE "$record,\n";
}
print OUTFILE ")\n";