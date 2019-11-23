myTail :: [a] -> [a]
myTail [] = error "empty list"
myTail (x:xs) = xs

myLast :: [a] -> a
myLast [] = error "empty list"
myLast [x] = x
myLast (x:xs) = myLast xs

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

isPalindrome :: Eq a => [a] -> Bool
isPalindrome x = x == reverse x

isPalindrome' :: Eq a => [a] -> Bool
isPalindrome' [] = True
isPalindrome' [x] = True
isPalindrome' (x:xs) = 
  if x == last xs
    then isPalindrome' (init xs)
    else False

main = do
  putStrLn "Assignment #4 106502549"
  putStr "1. myTail test for list [1,2,3]: "
  print(myTail [1,2,3])
  putStr "2. myLast test for list [1,2,3]: "
  print(myLast [1,2,3])
  putStr "3. myReverse test for list [1,2,3]: "
  print(myReverse [1,2,3])
  putStr "4.1 isPalindrome test for list [1,2,1]: "
  print(isPalindrome [1,2,1])
  putStr "4.2 isPalindrome test for list [1,2,3]: "
  print(isPalindrome [1,2,3])
  putStr "5.1 isPalindrome' test for list [1,2,1]: "
  print(isPalindrome' [1,2,1])
  putStr "5.2 isPalindrome' test for list [1,2,3]: "
  print(isPalindrome' [1,2,3])
