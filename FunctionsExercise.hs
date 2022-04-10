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
