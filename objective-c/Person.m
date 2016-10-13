#import "Person.h"

@implementation Person

-(id)initWithFirstName:(NSString *)aFirstName
             lastName:(NSString *)aLastName
             salary:(float)aSalary
{
    if(self = [ super init]){
        
        firstName = aFirstName;
        lastName = aLastName;
        salary = aSalary;
    }

    return self;


}

-( float)getSalary{
    return salary;
}

@end
