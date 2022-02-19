//
//  AreArrayFun.m
//  Welcome to Objc-C
//
//  Created by YesVladess on 19.02.2022.
//

#import "AreArrayFun.h"

@implementation AreArrayFun

- (void) testFunc {

    NSArray *array = [NSArray arrayWithObjects:@"My", @"mother", @"told", @"me", nil];
    NSString *string = @"Yay for Strings!";

    // Array literal
    NSArray *arr2 = @[@"Donkey", @"Kong"];
    array = nil;
    array = arr2;
    NSLog(@"Array from literal: %@", array.description);

    NSMutableArray *mutArray = [NSMutableArray arrayWithObjects:@"He", @"said", string, @"Now!", nil];
    NSLog(@"Mutable array: %@", mutArray.description);

    [mutArray removeObjectAtIndex:2];
    [mutArray insertObject:@"Say no to String! >:)" atIndex:2];
    NSLog(@"Mutable array: %@", mutArray.description);

    NSArray *arr3 = [NSArray arrayWithArray:array];

    NSArray *arr4 = mutArray;
    // This is wrong?
    NSMutableArray *arr5 = array;
    NSLog(@"Mutable array from NSArray: %@", mutArray.description);
}

@end
