#!usr/bin/perl

#nested loop to solve below problem
#problem statment : print following pattern
# *****
# ****
# ***
# **
# *

$a=5;

while ($a > 0){
   $b=1;
   while($b <= $a){
      print "*";
      $b=$b+1;
    }
    print "\n";
    $a=$a-1;
}
