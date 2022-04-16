-- Problem 1
-- (*) Find the last element of a list.
-- last[1,2,3,4]

-- Problem 2
-- (*) Find the last but one element of a list.
myButLast (x : _ : []) = x  -- base case
myButLast (_ : xs)     = myButLast xs