//
//  Person.m
//  HelloWorld
//
//  Created by Johnson Cheung on 1/25/16.
//  Copyright © 2016 Jcdevbot. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@implementation Person
@synthesize name = _name;


-(NSString*)getName{
    return _name;
}

-(void) setName:(NSString *)name test:(NSString *)test{
    _name = name;
}

@end