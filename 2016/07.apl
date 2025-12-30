lines←⊃⎕NGET'07.txt'1
split←(2|⍳∘≢)⍛(⊂⍤⊢⌸)~⍤∊∘'[]'⍛⊆
abba←{∨/(((≠/⊣/)∧(∧/=/))2 2⍴¯1∘⌽)¨⊃,/4,/¨⍵}
out in←↓⍉↑split¨lines
⎕←+/(~abba¨in)∧abba¨out
