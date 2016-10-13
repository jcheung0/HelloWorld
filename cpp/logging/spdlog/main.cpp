#include <iostream>
#include <spdlog/spdlog.h>

int main(int,char*[]){
    namespace spd = spdlog;
    try{
        auto console=spd::stdout_logger_mt("console", true);
        console->info("Welcome to spdlog!");
       
        auto file_logger = spd::rotating_logger_mt("file_logger", "logs/mylogfile", 1048576 * 5,4);
        file_logger->info("{} * {} ", "hello world", "test");

    }catch(const spd::spdlog_ex&ex){
        std::cout << "hello " << std::endl;
    }
}
