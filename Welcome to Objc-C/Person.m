//
//  Person.m
//  Welcome to Objc-C
//
//  Created by YesVladess on 14.01.2022.
//

#import "Person.h"

@implementation Person

- (void) myFunc {
    self.firstName = @"Blah";

    // When you create a property firstName, Obj-c creates an instance variable _firtName automaticlly for you
    _firstName = @"Jack";

    isInsecure = TRUE;

    // It also creates getter and setter

    [self setLastName:@"Davis"];

    NSString *name = [self firstName];


}

@end
