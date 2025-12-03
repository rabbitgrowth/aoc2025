lines←⊃⎕NGET'03.txt'1
max←(⌈/,)(∘.<⍨⍳∘≢)×(⍎¨∘.,⍨)
⎕←+/max¨lines
