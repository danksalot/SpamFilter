# ////////////////////////////////////////////////////////////////
# //
# //	Information Retrieval CSCE 5200
# //	Assignment 3
# //	Jacob Danks
# //	03/22/2013
# //
# ////////////////////////////////////////////////////////////////

use Math::Complex;
use File::Basename qw(basename);

# READ IN THE STOPWORDS FROM FILE
open(INFILE,"stopwords.txt");
@sw = <INFILE>;
for $w (@sw) {
	$w =~ s/\R//g;
	$stopwords{$w} = $w;
}
close INFILE;

# READ IN THE TEST CLASSIFICATIONS FROM FILE
open(INFILE,"cats.txt");
while (defined($line = <INFILE>)) {
	@fileData = split /\ /, $line;
 	$classes{@fileData[0]} = @fileData[1];
}
close INFILE;

# Make an array of spam filenames and good filenames
my @spamFiles = grep { $classes{$_} eq "spam\n" } keys %classes;
my @goodFiles = grep { $classes{$_} eq "nospam\n"} keys %classes;

# Read in each training document
my $training = 'Training';
foreach my $fp (glob("$training/*")) {
	open my $fh, "<", $fp or die "can't read open '$fp': $OS_ERROR";
	while (defined($line = <$fh>)) {
		$docName = basename $fp;

		# and put the words in an array 
		@words = split /\s+/, $line; 
		if(!@words){ 
			next; 
		} 

		# process each word... 
		while($word = pop @words){
			# don't process stopwords  
			if (!exists($stopwords{$word})){
				if(!exists($index{$word})){ 
					$nwords++;
				}
				# always update the frequency
				$index{$word}{$docName}++; 
				$frequency{$word}++;	

				# build the SPAM and GOOD term frequency as we go.
				if($classes{$docName} eq "spam\n") {
					$spamVector{$word}++;
				} else {
					$goodVector{$word}++;
				}
			}
		}
	}
	close $fh or die "can't read close '$fp': $OS_ERROR";
}

# Normalize Term Frequency for each class
for $word (sort keys %spamVector) {
	my $max = 1;
	$_ > $max and $max = $_ for values %{$spamVector{$word}};
	$spamVector{$word} = $spamVector{$word} / $max
}

for $word (sort keys %goodVector) {
	my $max = 1;
	$_ > $max and $max = $_ for values %{$goodVector{$word}};
	$goodVector{$word} = $goodVector{$word} / $max
}

# Now multiply by idf
for $word (sort keys %spamVector) {
	$spamVector{$word} *= log(scalar @spamFiles + scalar @goodFiles / scalar keys %{$index{$word}});
}

for $word (sort keys %goodVector) {
	$goodVector{$word} *= log(scalar @spamFiles + scalar @goodFiles / scalar keys %{$index{$word}});
}

# find the vector lengths of the class vectors
$vectorLength = 0;
for my $wrd (sort keys %spamVector) {
	$vectorLength += ($spamVector{$wrd} + 0) ** 2;
}
$spamVectorLength = sqrt($vectorLength);

$vectorLength = 0;
for my $wrd (sort keys %goodVector) {
	$vectorLength += ($goodVector{$wrd} + 0) ** 2;
}
$goodVectorLength = sqrt($vectorLength);

# Setup Output
open (MYFILE, '>results.txt');

print "////////////////////////////////////////////////////////////////\n";
print "//\n";
print "//	Information Retrieval CSCE 5200\n";
print "//	Assignment 3\n";
print "//	Jacob Danks\n";
print "//	03/22/2013\n";
print "//\n";
print "////////////////////////////////////////////////////////////////\n\n";

print MYFILE "////////////////////////////////////////////////////////////////\n";
print MYFILE "//\n";
print MYFILE "//	Information Retrieval CSCE 5200\n";
print MYFILE "//	Assignment 3\n";
print MYFILE "//	Jacob Danks\n";
print MYFILE "//	03/22/2013\n";
print MYFILE "//\n";
print MYFILE "////////////////////////////////////////////////////////////////\n\n";

# Now lets process the test documents
my $test = 'Test';
foreach my $fp (glob("$test/*")) {
	open my $fh, "<", $fp or die "can't read open '$fp': $OS_ERROR";
	while (defined($line = <$fh>)) {
		$docName = basename $fp;

		# and put the words in an array 
		@words = split /\s+/, $line; 
		if(!@words){ 
			next; 
		} 

		# process each word... 
		while($word = pop @words){
			# don't process stopwords  
			if (!exists($stopwords{$word})){
				if(!exists($index{$word})){ 
					$nwords++;
				}
				# always update the frequency
				$index{$word}{$docName}++; 
				$frequency{$word}++;

				# build the vector for this file
				if (exists $frequency{$word}){
					# calculate tf*idf of the query as we go
					$newVector{$word} += log(scalar @spamFiles + scalar @goodFiles / scalar keys %{$index{$word}});
				} 
			}	
		}
	}
	close $fh or die "can't read close '$fp': $OS_ERROR";

	# Calculate the vector length of this document
	$vectorLength = 0;
	for my $wrd (sort keys %newVector) {
		$vectorLength += ($newVector{$wrd} + 0) ** 2;
	}
	$newVectorLength = sqrt($vectorLength);

	# compare to class vectors and make a determination which class using Cosine Similarity
	my $spamNumerator = 0;
	my $goodNumerator = 0;
	for my $wrd (sort keys %newVector) {
		$spamNumerator += ($spamVector{$wrd} + 0) * ($newVector{$wrd} + 0);
		$goodNumerator += ($goodVector{$wrd} + 0) * ($newVector{$wrd} + 0);
	}

	$spamSimilarity = $spamNumerator / (($newVectorLength + 0) * ($spamVectorLength + 0));
	$goodSimilarity = $goodNumerator / (($newVectorLength + 0) * ($goodVectorLength + 0));

	# Record our determination
	if ($spamSimilarity > $goodSimilarity) {
		$testResults{$docName} = "Spam";
	} else {
		$testResults{$docName} = "Not Spam";
	}

	# Judge how we did and record results
	if($classes{$docName} eq "spam\n") {
		if($testResults{$docName} = "Spam"){
			print "$docName\t$testResults{$docName}\t Got it right!\n";
			print MYFILE "$docName\t$testResults{$docName}\t Got it right!\n";
			$correct++;
		} else {
			print "$docName\t$testResults{$docName}\t Got it wrong!\n";
			print MYFILE "$docName\t$testResults{$docName}\t Got it wrong!\n";
			$wrong++;
		}
	} else {
		if($testResults{$docName} = "Not Spam"){
			print "$docName\t$testResults{$docName}\t Got it right!\n";
			print MYFILE "$docName\t$testResults{$docName}\t Got it right!\n";
			$correct++;
		} else {
			print "$docName\t$testResults{$docName}\t Got it wrong!\n";
			print MYFILE "$docName\t$testResults{$docName}\t Got it wrong!\n";
			$wrong++;
		}
	}
}

print "\nCorrect: $correct\nWrong: " . ($wrong + 0) . "\n";
print MYFILE "\nCorrect: $correct\nWrong: " . ($wrong + 0) . "\n";

close (MYFILE);