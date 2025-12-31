⎕PP←34
line←⊃⊃⎕NGET'09.txt'1
length←{
 0=≢⍵:0
 '('≠⊃⍵:1+⍺∇1↓⍵
 i←⍵⍳')'
 x y←⍎¨∊∘⎕D⍛⊆i↑⍵
 ⍺:(y×⍺∇x↑i↓⍵)+⍺∇x↓i↓⍵
   (y×x      )+⍺∇x↓i↓⍵
}
⎕←0 length line
⎕←1 length line
