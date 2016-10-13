#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *firstName;
    NSString *lastName;
    float salary;
}


- (id) initWithFirstName:(NSString *) aFirstName
              lastName:(NSString *)aLastName
              salary:(float)aSalary;

- (float) getSalary;


@property (weak, atomic) NSObject* test;

@end
