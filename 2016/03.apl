triangles←↑⍎¨⊃⎕NGET'03.txt'1
valid←{⍵[;3]<+/⍵[;1 2]}{⍵[⍋⍵]}⍤1
⎕←+/valid               triangles
⎕←+/valid(⍴triangles)⍴,⍉triangles
