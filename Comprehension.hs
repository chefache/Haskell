-- comperhensionList  = [10 * x | x <- [1..100]] -- it will return all numbers from 1 to 100 multiplied by 10

-- [x*2 | x <- [1..10], x*2 >= 12]  -- it will return [12,14,16,18,20]

-- [ x | x <- [50..100], x `mod` 7 == 3]  --it will return [52,59,66,73,80,87,94]

boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

boomBangs2 xs = [ if x `mod` 2 == 0 then "Even!" else "Odd!" | x <- xs] -- it will return numbers from 1 to 100 like Odd and Even string

-- [ x | x <- [1..100], x `mod` 2 == 0] -- it will return all even numbers from 1 to 100

-- [ x | x <- [10..20], x /= 13, x /= 15, x /= 19] -- it will return all numbers from 10 to 20 which are not 13, 15, 19

-- [ x*y | x <- [2,5,10], y <- [8,10,11]]  -- it will return a list of all possible combinations [16,20,22,40,50,55,80,100,110] 

-- [ x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50] -- it will return a list of all possible combinations which are even [16,20,22,40,50,80,100,110]


-- list comprehension that combines a list of adjectives and a list of nouns
-- let nouns = ["hobo","frog","pope"]
-- let adjectives = ["lazy","grouchy","scheming"]
-- [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns] 


removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']] -- Takes a string and removes everything except uppercase letters from it.


-- let xxs = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]
-- [ [ x | x <- xs, even x ] | xs <- xxs] -- Remove all odd numbers without flattening the list.

numberOfEs s = sum [1 | x <- s, x == 'e'] -- return number of 'e' in the given string s

noSpaces s = [x | x <- s, x /= ' '] -- return given string with no spaces betwean the words

betwean a b c = [x | x <- c, x > a, x < b ] -- input: betwean 2 5 [1,2,3,4,5,6] output: [3,4]
-- x output
-- c given list
-- a which needs to be greater than x
-- b which needs to be smaller than x