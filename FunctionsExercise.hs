doubleMe x = x + x

tripleMe x = x + x + x

doubleUs x y = x*2 + y*2

doubleSmallNumber x = if x > 100 then x else x*2   

doubleNumberInRange x = if x >= 50 && x <= 60 
	then x * 2 
	else 99999999

-- Because the else is mandatory, an if statement will always return something and that's why it's an expression. 
-- If we wanted to add one to every number that's produced in our previous function, we could have written its body like this.
doubleSmallNumber' x = (if x > 100 then x else x*2) + 1 

-- find smaller number
minNum x y  = min x y

concatArr1 = [1,2,3] ++ [4] -- Haskell has to walk through the whole list on the left side of ++.

concatStr = 'a':"bcde" -- return abcde

concatArr2 = 1:[2, 3, 4] -- return [1, 2, 3, 4]

takeArrElement = ['S', 't', 'e', 'f', 'a', 'n'] !! 0 -- return 'S'

takeStrElement = "Stefan" !! 2 -- return 'e'

listOfLists = [[1, 2, 3], [4, 5, 6]] !! 0

particularListElements1 = [1,5..200] -- start from 1 and take all 5th elements to 200

particularListElements2 = [2,8..20] -- start from 2 and take all 6th element to 20

reverseList1 = [20,19..1] -- return list with numbers frome 20 to 1 

reverseList2 = [100, 95..1] --return list with every 5th number from 100 to 1 

takeFirst24MultipliesOf13 = take 24 [13,26..] -- return first 24 multypliers of 13 (26 = 2 * 13) => 13, 26, 39, 52...312

takeFirst100MultiplyersOf5 = take 100[5,20..] -- return 5,20,35,50,65....1490

cycleArr = take 15 (cycle [1,2,3,4]) -- it wil return [1,2,3,4,1,2,3,4,1,2,3,4,1,2,3]

repeatArr = take 10(repeat 5) -- it will return [5,5,5,5,5,5,5,5,5,5]

comperhensionList  = [10 * x | x <- [1..100]] -- it will return all numbers from 1 to 100 multyplied by 10

-- [x*2 | x <- [1..10], x*2 >= 12]  -- it will return [12,14,16,18,20]

-- [ x | x <- [50..100], x `mod` 7 == 3]  --it will return [52,59,66,73,80,87,94]

boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

boomBangs2 xs = [ if x `mod` 2 == 0 then "Even!" else "Odd!" | x <- xs] -- it will retrurn numbers from 1 to 100 like Odd and Even string

-- [ x | x <- [1..100], x `mod` 2 == 0] -- it will return all even numbers from 1 to 100

-- [ x | x <- [10..20], x /= 13, x /= 15, x /= 19] -- it will return all numbers from 10 to 20 wich are not 13, 15, 19

-- [ x*y | x <- [2,5,10], y <- [8,10,11]]  -- it will return a list of all posible combinations [16,20,22,40,50,55,80,100,110] 

-- [ x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50] -- it will return a list of all posible combinations wich are even [16,20,22,40,50,80,100,110]

-- list comprehension that combines a list of adjectives and a list of nouns
-- let nouns = ["hobo","frog","pope"]
-- let adjectives = ["lazy","grouchy","scheming"]
-- [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns] 


removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']] -- Takes a string and removes everything except uppercase letters from it.


-- let xxs = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]
-- [ [ x | x <- xs, even x ] | xs <- xxs] -- Remove all odd numbers without flattening the list.
