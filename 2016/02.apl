lines←⊃⎕NGET'02.txt'1
moves←{(¯1 0)(1 0)(0 ¯1)(0 1)['UDLR'⍳⍵]}¨lines
pad←(' ',⌽∘⍉)⍣4
code←{
 start←⊃⍸'5'=map←pad ⍵
 ⌷∘map¨1↓⊃{
  ⍵,{⍵+(' '≠map⌷⍨⍵+⍺)×⍺}/⌽(⊂⊃⌽⍵),⍺
 }/⌽(⊂⊂start),moves
}
⎕←code['123'
       '456'
       '789']
⎕←code['  1  '
       ' 234 '
       '56789'
       ' ABC '
       '  D  ']
