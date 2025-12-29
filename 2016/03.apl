triangles←⍎⍤1⊃⎕NGET'03.txt'2
valid←{⍵[;3]<+/⍵[;1 2]}{⍵[⍋⍵]}⍤1
⎕←+/valid               triangles
⎕←+/valid(⍴triangles)⍴,⍉triangles
