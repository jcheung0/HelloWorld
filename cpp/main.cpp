#include <iostream>
#include <algorithm>
#include <mutex>
#include <thread> 
#include <vector>
#include <chrono>

using namespace std;
int main(){
    unsigned num_cpus = thread::hardware_concurrency();
    cout << "Launching " << num_cpus <<  " threads \n";

    mutex iomutex;
    vector<thread> threads(num_cpus);
    
    for( unsigned i = 0; i < num_cpus; i++){
        threads[i] = std::thread([&iomutex, i]{
            lock_guard<mutex> iolock(iomutex);
            cout << "Thread #" << i << " is running \n";
        
        
        this_thread::sleep_for(chrono::milliseconds(200));

        });
    }

    cout << "Hello world" << endl;
}
