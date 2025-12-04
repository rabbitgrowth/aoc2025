map←'@'=⊃⎕NGET'04.txt'2
reachable←⊢∧4≥{+/,⍵}⌺3 3
⎕←+/,reachable map
⎕←+/,(⊢-(⊢-reachable)⍣≡)map
