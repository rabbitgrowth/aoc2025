rooms:0:"04.txt"
parse:{(name;cksum):"["\-1_x
 words:"-"\name
 (-1_words;`I$*|words;cksum)}
(names;ids;cksums):+parse'rooms
cksum:{5#>#'={x@<x}@,/x}
+/ids@&cksums~'cksum'names
