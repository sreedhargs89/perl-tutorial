#!usr/bin/perl

#Array representation in perl
#Array : Multiple scalar variable with the single variable instead creating separate scalar variable
@ranks = (1,2,3);
@names = ('Sree', 'Raj', 'Vinay');

print "Ranks are @ranks\n";
print "Names are @names\n";
print "First name in the array @names[0]\n"; 

#Type less code to create th array

@ranks = (1..10);
@alphabets = (a..z);

print "All ranks @ranks\n";
print "All alphabets @alphabets\n";

#Identify the size of the array by assigning it to a scalar variable
$size= @alphabets;
print "Size of the array Alphabets=$size\n";

@players=('Andy','Randy');
print "First set of players: @players\n";

push(@players, "Roger"); # Add one more player to players array
print "Second set of players: @players \n";

#instead add the new player in the beginning
unshift (@players, "Sree");
print "Third set of players: @players \n";

#Remove last player from the list
pop (@players);
print "Fourth set of players: @players \n";

#Remove from the beginning of the player list
shift (@players);
print "Fifth set of players: @players \n";

##################################
#### Array slicing openrations ###
##################################

@months=('Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec');
print "Print the name of months: @months\n";

@winter=@months[10,11,0,1];
@summer=@months[2..9];

print "Winter months: @winter\n";
print "Summer months: @summer\n";

# Simple array splice operation replaces one or more element in the array
@actors = ('Toh Hanks', 'Brad Pitt', 'Will Smith', 'Edward Norton');
@new = ('Lionordo Dicaprio','Denzel Washington','Sree'); 

print "First list of actors: @actors\n";
print "New list of actors: @new\n";

splice(@actors,1,3,@new); # This means --> 1st number is offset, 2nd is number of elements from there

print "New list of actors after splicing: @actors\n";

## Join the array elements
$my_string = join(' and ',@actors);
print "Scalar varsion of actors array: $my_string\n";

## String to array conertions
$my_string = "All work and no play makes jack a dull boy!";

@my_array = split(' ',$my_string);
print "Text array: @my_array\n";
print "Part of the Text array: @my_array[0..4]\n";

@string_arr=('One','Two','Three','Four','Five','Six','Seven');
print "Original string list: @string_arr\n";

@string_arr=sort(@string_arr);
print"Sorted string list: @string_arr\n";

@arr1=(1..5);
@arr2=(6..10);

@final_arr=(@arr1,@arr2);
print "Merged array: @final_arr\n";

