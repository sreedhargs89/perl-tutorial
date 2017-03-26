#!usr/bib/perl

$x=21;

# simple conditional 'if', 'else' demonstration
if($x%2 == 0){   #unless($x%2 ==0) this is also kind of conditional similar to 'if'
	print "x is even\n";	
}else{
	print "x is odd \n";
}

# 'elsif' conditional statement for comparing various scenarios

$op = "div";
$x = 20;
$y = 10;

if($op eq "add"){
    $res= $x+$y;
    print "$op Result: $res\n";
}
elsif($op eq "sub")
{
    $res= $x-$y;
    print "$op Result: $res\n";
}elsif($op eq "mul")
{
    $res= $x*$y;
    print "$op Result: $res\n";
}
elsif($op eq "div")
{
    $res= $x/$y;
    print "$op Result: $res\n";
}
elsif($op eq "rem")
{
    $res= $x%$y;
    print "$op Result: $res\n";
}else{
    print "$op Unknown operation..!\n";
}

# Ternary operations in perl
$num = 150-1;
$str = !($num %2==0)? "$num is odd":"$num is even";
print "$str\n";


# While loop operation
$x=10;

while($ x<=20){ # Print until x is less than or equal to 20
   print"$x\n";
   $x=$x+1;    
}

until($x>=30){ # Print until x is greater than or equal to 30 -- Opposite of while
   print"$x\n";
   $x=$x+1;    
}

# Iteration or for loop
for($x=10; $x<=20; $x=$x+1){
print "print in for $x\n";    
}

#foreach loop -- This is basically to travers through the list
@alphabets=(a..k);
print "@alphabets\n";

foreach $letter (@alphabets)
{
    print "$letter\n";
}

#Do while -- To execute atleast once do matter what
$x=100;
do{    
print "$x\n"; # This will be executed atleast once, Even condition is false
$x=$x+1;
}while($x<20);