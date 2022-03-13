//
//  DeathLoop.m
//  Welcome to Objc-C
//
//  Created by YesVladess on 13.03.2022.
//

#import "DeathLoop.h"

@implementation DeathLoop

- (void) startLesson {

    NSArray *cars = @[@"Lada", @"Toyota", @"Ford"];

    for (int x = 1; x <= cars.count; x++) {
        NSString *car = [cars objectAtIndex: x-1];
        NSLog(@"Car %d is %@", x, car);
    }

    NSLog(@"Fast ennumeration");

    for (NSString *car in cars) {
        NSLog(@"Car is %@", car);
    }
}

@end
