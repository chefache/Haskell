-- Pattern matching

-- Pattern matching consists of specifying patterns to which some data should conform and then checking to see if it does and deconstructing the data according to those patterns.
lucky :: (Integral a) => a -> String  
lucky 7 = "LUCKY NUMBER SEVEN!"  
lucky x = "Sorry, you're out of luck, pal!"  
-- When you call lucky, the patterns will be checked from top to bottom and when it conforms to a pattern, the corresponding function body will be used.

sayMe :: (Integral a) => a -> String
sayMe 1 = "One"
sayMe 2 = "Two"
sayMe 3 = "Three"
sayMe 4 = "Four"
sayMe 5 = "Five"
sayMe x = "Not between 1 and 5"
-- Will return (One, Two... Five) if we call (1, 2...5), and will return "Not between" for all the rest numbers.

-- If we wanted to make a function that takes two vectors in a 2D space (that are in the form of pairs) and adds them together.
-- We add their x components separately and then their y components separately.
addVectors :: (Num a) =>(a, a) -> (a, a) -> (a, a)
addVectors (x1, y1)  (x2, y2) = (x1 + x2, y1 + y2)
-- input: addVectors (1,2)(3,4), output: (4,6)

-- My own function that returns first, second or third element from list
first :: (a, b, c) -> a
first (x, _, _) = x
second :: (a, b, c) -> b
second (_, y, _) = y
third :: (a, b, c) -> c
third (_, _, z) = z


-- My own implementation of the head function.
head' :: [a] -> a  
head' [] = error "Cant call head on an empty list, dummy!"  
head' (x:_) = x
