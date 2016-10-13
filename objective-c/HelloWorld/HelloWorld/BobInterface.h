//
//  BobInterface.h
//  HelloWorld
//
//  Created by Johnson Cheung on 1/26/16.
//  Copyright © 2016 Jcdevbot. All rights reserved.
//

#ifndef BobInterface_h
#define BobInterface_h


#endif /* BobInterface_h */

@interface BobInterface : NSObject <BobProtocol>


- (void)startPedaling;
- (void)removeFrontWheel;
- (void)lockToStructure:(id)theStructure;


@end