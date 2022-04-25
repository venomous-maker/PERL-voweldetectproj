#!/usr/bin/perl
#print "Input any sentence please: "; 
$sentence = <STDIN>;

#print $sentence;
$y = $sentence;
$n = $y;
$n1 = $y;
$n2 = $y;
$n3 = $y;
$n4 = $y;
$n5 = $y;

while ($y =~ /(\w+)/g) {
	$word = $1;
	if ($word =~ m/.*[a,e,i,o,u]{5}.*/g){
		$n1 =~ s/$word/**$word**/;
		$N1 = $n1;
	}elsif ($word =~ m/.*[a,e,i,o,u]{4}.*/g){
		$n2 =~ s/$word/**$word**/;
		$N2 = $n2;
	}elsif ($word =~ m/.*[a,e,i,o,u]{3}.*/g){
		$n3 =~ s/$word/**$word**/;
		$N3 = $n3;
	}elsif ($word =~ m/.*[a,e,i,o,u]{2}.*/g){
		$n4 =~ s/$word/**$word**/;
		$N4 = $n4;
	}elsif ($word =~ m/.*[a,e,i,o,u]{1}.*/g){
		$n5 =~ s/$word/**$word**/;
		$N5 = $n5;
	}else{
		$N6 = "It seems no vowels in your sentence";
	}

}
if (length $N1 > 4){
	print "$n1";
}elsif (length $N2 > 3){ 
	print "$n2";
}elsif (length $N3 > 2){ 
	print "$n3";
}elsif (length $N4 > 1){ 
	print "$n4";
}elsif (length $N5 > 0){ 
	print "$n5";
}else {
	print "$N6\n";
}
#print "Final result is $n1";
print "original statement is: $sentence\n";


#$x =~ s/4/four/;   # $x contains "I batted four for 4"
#$x = "I batted 4 for 4";
#$x =~ s/4/four/g;  # $x contains "I batted four for four"
#print $x;






