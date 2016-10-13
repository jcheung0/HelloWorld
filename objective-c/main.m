#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import "Person.h"
int main(int argc, const char *argv[]){
    //NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    NSLog(@"Hello world");
    Person* p = [[ Person alloc] initWithFirstName:@"johnson" lastName:@"cheung" salary:3000.5];
    NSLog([NSString stringWithFormat:@"%g",[p getSalary]]);
    
    NSDictionary *book1 = [ [ NSDictionary alloc] initWithObjectsAndKeys:@"Art of War", @"Title", @"Sun Tzu", @"Author", nil];
    NSDictionary *book2 = [ [ NSDictionary alloc] initWithObjectsAndKeys:@"Brave New World", @"Title", @"Aldous Huxley", @"Author", nil];
    
    NSArray *booksArray = [ [ NSArray alloc] initWithObjects: book1,book2,nil];
}
