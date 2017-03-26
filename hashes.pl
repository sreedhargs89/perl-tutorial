#!usr/bin/perl

# Hashes or dictionary in perl, Basically to store the key value pairs

%players = (1=>"Novak", 2=>"Roger" , 3=>"Andy");
%capitals = ("India"=>"New Delhi", "Germany"=>"Berlin", "Switzerland"=>"Bern");

# Slicing the hash
print "Best player : $players{1}\n";
print "India's Capital: $capitals{'India'}\n";

#Slicing multiple values
@my_array = @players{1..3}; # @players(1,3) --> Give you first and third value in hash

print "World Top Players: @my_array\n";

#Fetching keys from hash
@ranks= keys %players;
@players= values %players;

print "Ranks array @ranks\n";
print "Values of array @players\n";

#Finding size of an array
$size=@ranks;
print "Size of the hash: $size\n";

$rank =4;

if (exists($players{$rank}))
{
print "Rank $rank player exists: Name\[$rank\] --> $players{$rank}\n";	
}
else
{
print "Ooops..!! Rank $rank not exists..!\n";
print "Adding missing $rank\n";
$players{$rank}='Berdych';
print "After adding $rank player exists: Name\[$rank\] --> $players{$rank}\n";
@my_arr= keys %players;
$size = @my_arr;
print "The size of hash after addition: $size\n";

print "Fine adding, Now delete the $rank element\n";
delete  $players{$rank};

@my_arr= keys %players;
$size = @my_arr;
print "The size of hash after deletion: $size\n";
}