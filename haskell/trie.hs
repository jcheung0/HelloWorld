import Data.Map

data Trie a = Trie {
        value :: Maybe a,
        children :: Map Char (Trie a)
    }

find :: String -> Trie a -> Maybe a
find [] t = value t
find (k:ks) t = do 
    ct <- Data.Map.lookup k (children t)
    find ks ct
