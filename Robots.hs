-- Some imports we need, nothing to worry about.

import Control.Monad

-- Some predefined types for you to work with. If you change
-- these some of the IO stuff will have to be changed as well,
-- so avoid that, at least to begin with.

type Command = Char
type Robot = (Int, Int, Float) -- x, y, angle
type Level = (Int, Int) -- w, h






-- HERE WE GO!
--
-- Write your implementation below. The runAll function is
-- called by the main function. To start with, keep that as
-- it is and try to implement just `runAll`.

runAll :: Robot -> Level -> [Command] -> Robot
runAll _ _ _ = undefined









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
