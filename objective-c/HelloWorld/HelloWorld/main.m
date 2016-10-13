//
//  main.m
//  HelloWorld
//
//  Created by Johnson Cheung on 1/22/16.
//  Copyright © 2016 Jcdevbot. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/*@interface Person : NSObject {
    @private char *name;

}

@property (readwrite,assign) char *name;
    -(void) sayHello;
@end

@implementation Person
    @synthesize name;

    -(void) sayHello{
        printf("Hello my name is %s", [self name]);
    }
@end
*/


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        
        Person *brad = [Person new];
        [brad setName:@"test1" test:@"test2"];
        NSLog([brad getName]);
        NSLog(@"hello world");
        //brad.name = "Brad Cox";
        //[brad sayHello];
    }
    return 0;
}
