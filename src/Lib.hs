module Lib where
import Data.Maybe

-- type Top = Int
-- type Size = Int
-- type Array = [Int]

-- data Stack = Stack Size Top Array deriving Show
-- 
-- newArray :: Size -> Stack
-- newArray s = Stack s (-1) []
-- 
-- push :: Stack -> Int -> Stack
-- push (Stack size top arr) i = Stack size (top+1) (i : arr)
-- 
-- pop :: Stack -> Stack
-- pop (Stack size top (x:xs)) = Stack size (top-1) xs
-- 

data Stack a = Stack [a] deriving Show

empty :: Stack a
empty = Stack []

push :: a -> Stack a -> Stack a
push x (Stack xs) = Stack (x:xs)

pop :: Stack a -> Maybe (a, Stack a)
pop (Stack []) = Nothing
pop (Stack (x:xs)) = Just (x, Stack xs)

isEmpty :: Stack a -> Bool
isEmpty (Stack xs) = null xs

top :: Stack a -> Maybe a
top (Stack []) = Nothing
top (Stack (x:xs)) = Just x

size :: Stack a -> Int
size (Stack xs) = length xs



-- type Front = Int
-- type Rear = Int
-- type Array = [Int]
-- 
-- data Queue = Queue Front Rear Array deriving Show
