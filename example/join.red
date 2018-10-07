data join (A B : type) where
| inl (a : A)
| inr (b : B)
| push (a : A) (b : B) (i : dim) [
  | i=0 → inl a
  | i=1 → inr b
  ]
