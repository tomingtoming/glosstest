import Graphics.Gloss

main :: IO ()
main = display (InWindow "Gloss Test" (640, 480) (10, 10)) white picture

picture :: Picture
picture = Translate (-170) (-20) $ Scale 0.5 0.5 $ Text "Hello, World!"
