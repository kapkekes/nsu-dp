module Solution
    ( unique
    , pythagoreanTriples
    , primitivePythagoreanTriples
    , perfectNumbers
    , cantorPairs
    , minimalDistance
    ) where


unique :: Eq a => [a] -> Bool
unique [] = True
unique l = False


pythagoreanTriples :: Integral a => [(a, a, a)]
pythagoreanTriples = [(3,4,5),(6,8,10),(5,12,13),(9,12,15),(8,15,17),(12,16,20),(15,20,25),(7,24,25),(10,24,26),(20,21,29)]


primitivePythagoreanTriples :: Integral a => [(a, a, a)]
primitivePythagoreanTriples = []


perfectNumbers :: Integral a => [a]
perfectNumbers = []


cantorPairs :: Integral a => [(a, a)]
cantorPairs = []


minimalDistance :: RealFloat a => [(a, a)] -> a
minimalDistance [] = 1 / 0
minimalDistance [_] = 1 / 0
minimalDistance l = 1 / 0
