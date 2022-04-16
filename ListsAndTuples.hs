justArr = [1, 2, 3, 4, 5, 6]

concatArr1 = [1,2,3] ++ [4] -- Haskell has to walk through the whole list on the left side of ++.

concatStr = 'a':"bcde" -- return abcde

concatArr2 = 1:[2, 3, 4] -- return [1, 2, 3, 4]

takeArrElement = ['S', 't', 'e', 'f', 'a', 'n'] !! 0 -- return 'S'

takeStrElement = "Stefan" !! 2 -- return 'e'

listOfLists = [[1, 2, 3], [4, 5, 6]] !! 0 -- return[1, 2, 3]

particularListElements1 = [1,5..200] -- start from 1 and take all 5th elements to 200

particularListElements2 = [2,8..20] -- start from 2 and take all 6th element to 20

reverseList1 = [20,19..1] -- return list with numbers from 20 to 1 

reverseList2 = [100, 95..1] --return list with every 5th number from 100 to 1 

takeFirst24MultipliesOf13 = take 24 [13,26..] -- return first 24 multipliers of 13 (26 = 2 * 13) => 13, 26, 39, 52...312

takeFirst100MultiplyersOf5 = take 100[5,20..] -- return 5,20,35,50,65....1490

cycleArr = take 15 (cycle [1,2,3,4]) -- it will return [1,2,3,4,1,2,3,4,1,2,3,4,1,2,3]

repeatArr = take 10(repeat 5) -- it will return [5,5,5,5,5,5,5,5,5,5]

-- Tuples

tupleOfTuples = (("Stefan", 23), ("Ivan", 44))

triangles = [ (a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10] ] --all triangles with sides equal to or smaller than 10

rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2] --add a condition that they all have to be right triangles.

-- ghci> zip [1,2,3,4,5] [5,5,5,5,5]  
-- [(1,5),(2,5),(3,5),(4,5),(5,5)]  
-- ghci> zip [1 .. 5] ["one", "two", "three", "four", "five"]  
-- [(1,"one"),(2,"two"),(3,"three"),(4,"four"),(5,"five")]  