-- HASKELL ROBOT LAB
--
-- This is an introductory Haskell lab. The primary objective is to implement
-- the `runAll` function that moves the robot given a string of commands. The
-- commands are `G`, `R` and `L` for Go, Right and Left respectively.
--
-- This file defines a simple main function that takes commands as input and
-- prints the resulting robot and level. Start by implementing `runAll` a couple
-- of lines down from here. After that, you can try the extras as well if you
-- want to.




-- Some imports we need, nothing to worry about.

import Control.Monad

-- Some predefined types for you to work with. If you change these some of the
-- IO stuff will have to be changed as well, so avoid that, at least to begin
-- with.

type Command = Char
type Robot = (Int, Int, Float) -- x, y, angle
type Level = (Int, Int) -- w, h






-- HERE WE GO!
--
-- Write your implementation below. The `runAll` function is called by the main
-- function. To start with, keep the type signature for `runAll` as it is and
-- try to implement it.

runAll :: Robot -> Level -> [Command] -> Robot
runAll _ _ _ = undefined







-- EXTRAS:
--
-- When you have a working `runAll` you can move on by...
--
-- * restraining the robot from moving outside the level.
-- * validating the incoming commands and print an error message if invalid.
-- * converting the Command type to an algebraic data type.
--
-- Note that some of these extras might require you to change the main function.





--  The rest of this file is only IO stuff, you can ignore it.

tileChar :: (Int, Int) -> Robot -> String
tileChar (x, y) (rx, ry, _)
  | x == rx && y == ry  = "O"
  | otherwise           = "."

printLevel :: Level -> Robot -> String
printLevel (w, h) r =
  unlines $ map unwords l
  where l = do x <- [0..w]
               return $ do
                   y <- [0..h]
                   return $ tileChar (x, y) r

level :: Level
level = (20, 20)

startRobot :: Robot
startRobot = (10, 10, 0.0)

main :: IO ()
main = next startRobot
  where next r = do
          cmds <- getLine
          unless (null cmds) $ do
            let r2 = runAll r level cmds
            putStr $ printLevel level r2
            next r2
