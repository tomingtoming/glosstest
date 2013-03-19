import Graphics.Gloss
import Graphics.Gloss.Interface.Pure.Game

main :: IO ()
main =
  play (InWindow "Gloss Test" (640, 480) (10, 10))
  white maxBound initWorld drawWorld eventWorld nextWorld

data World = World [(String, Int, Int)]

initWorld :: World
initWorld = World [("Test", 100, 200)]

drawWorld :: World -> Picture
drawWorld (World elems) = pictures $ map drawElem elems

drawElem :: (String, Int, Int) -> Picture
drawElem (str,x,y) = translate (-170) (-20) $ text str

eventWorld :: Event -> World -> World
eventWorld _ world = world

nextWorld :: Float -> World -> World
nextWorld _ world = world
