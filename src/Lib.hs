module Lib where

type Top = Int
type Size = Int
type Array = [Int]

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


type Front = Int
type Rear = Int
type Array = [Int]

data Queue = Queue Front Rear Array deriving Show
