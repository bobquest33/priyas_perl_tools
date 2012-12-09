use strict;
my $emailFile = "email.txt";
open(F,'<hr_names.txt') or die('Nope: '.$!);
open (OUTFILE, '>', "$emailFile") or die "\nERROR: Cannot open the file \"$emailFile\". Check to see if it exists in the current directory.\n";
    
my $re = '/(\S{1,80}@\S{2,100})\s/g';
my @emails;


while ( chomp(my $line = <F>) )
{
	
	my @all = split(" ",$line);
	foreach my $l(@all) 
	{
		if(index($l, "@")>-1) 
		{
			push (@emails,$l);
		}
	}
	#push(@all,$line =~ qr($re));
}

close(F);
foreach my $l (@emails){
	print "$l\n";
	print OUTFILE "$l,\n";
}