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
