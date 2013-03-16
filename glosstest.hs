import Graphics.Gloss
import Graphics.Gloss.Interface.Pure.Game

main :: IO ()
main = play (InWindow "Gloss Test" (640, 480) (10, 10)) white maxBound initWorld drawWorld eventWorld nextWorld

data World = World Int

initWorld :: World
initWorld = undefined

drawWorld :: World -> Picture
drawWorld world = undefined

eventWorld :: Event -> World -> World
eventWorld event world = undefined

nextWorld :: Float -> World -> World
nextWorld float world = undefined
