
putTodo :: (Int,String) -> IO()
putTodo ( n, todo) = putStrLn( show n ++ ": " ++ todo)

prompt :: [String] -> IO()
prompt todos = do
    putStrLn ""
    putStrLn "Current TODO list:"

    mapM_ putTodo ( zip[0..] todos)
    command <- getLine
    interpret command todos

interpret :: String -> [String] -> IO()
interpret ('+':' ':todo) todos = prompt(todo:todos)
interpret ('-': ' ' : num) todos =
    case delete (read num) todos of
        Nothing -> do
            putStrLn "No TODO entry matches the given number"
            prompt todos
        Just todos' -> prompt todos'

interpret "q" todos = return()
interpret command todos = do
    putStrLn("Invalid command: `" ++ command ++ "`")
    prompt todos

delete :: Int -> [a] -> Maybe [a]
delete 0 ( _:as) = Just as
delete n ( a: as) = do
    as' <- delete ( n - 1) as 
    return (a:as')

delete _ [] = Nothing


sum' :: [Int] -> IO()
sum' xs = do
    putStr $ show xs ++ " "
    print $ sum xs

main = do 
    putStrLn("Commands:")
    putStrLn"+ <String> "
    sum' [1,5] 
