lines←⊃⎕NGET'07.txt'1
split←(2|⍳∘≢)⍛(⊂⍤⊢⌸)~⍤∊∘'[]'⍛⊆
out in←↓⍉↑split¨lines
abba←(≠/2∘↑)∧⌽⍛≡
tls←{∨/abba¨⊃,/4,/¨⍵}
ssl←{abba¨⍛/⊃,/3,/¨⍵}
bab←3⍴1∘↓
⎕←+/(~tls¨in)∧tls¨out
⎕←+/(ssl¨in)∨/⍤∊¨⍨(bab¨ssl)¨out
