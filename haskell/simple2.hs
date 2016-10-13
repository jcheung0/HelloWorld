import System.Info
import System.Environment


print_sys_env :: IO()
print_sys_env = do 
	getArgs >>= print
	getProgName >>= print
	getEnvironment >>= print


print_system::IO()
print_system = do
	print os
	print arch
	print compilerName
	print compilerVersion
           
main = do 
	print_system 
	print "printing out system variables" 
	print_sys_env