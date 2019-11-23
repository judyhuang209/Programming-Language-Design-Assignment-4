myTail :: [a] -> [a]
myTail [] = error "empty list"
myTail (x:xs) = xs

myLast :: [a] -> a
myLast [] = error "empty list"
myLast [x] = x
myLast (x:xs) = last xs 

-- myReverse :: [a] -> [a]



-- isPalindrome :: Eq a => [a] -> Bool
-- isPalindrome [] = True



main = do 
   putStr "1. myTail test for list [1,2,3]: "
   print(myTail [1,2,3]) 
   putStr "2. myLast test for list [1,2,3]: "
   print(myLast [1,2,3])
   putStr "3. myReverse test for list [1,2,3]: "