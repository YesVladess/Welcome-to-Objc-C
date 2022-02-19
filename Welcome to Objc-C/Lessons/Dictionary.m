//
//  Dictionary.m
//  Welcome to Objc-C
//
//  Created by YesVladess on 19.02.2022.
//

#import "Dictionary.h"

@implementation Dictionary

- (void) startLesson {

    NSNumber *age1 = [NSNumber numberWithInt:40];
    NSNumber *age2 = [NSNumber numberWithInt:50];

    // In objc dictionary could have different types in it
    // But it is dangerous thing for casting in iteration, not recomended
    NSDictionary *dict = @{@"jack": age1,
                           @"john": age2,
                           @100: @200};

    NSLog(@"Dictionary: %@", dict.description);

    int johnsAge = [[dict objectForKey:@"john"] intValue];
    NSLog(@"Johns age is %d", johnsAge);

    NSMutableDictionary *mutDict = [NSMutableDictionary dictionaryWithDictionary:dict];
    // NSMutableArrays if key already exists, object will be updated
    [mutDict setValue:@12 forKey:@"den"];
    [mutDict setObject:@13 forKey:@"den"];
    NSNumber *densAge = [mutDict objectForKey:@"den"];
    NSLog(@"Mutable dictionary: %@", mutDict.description);
    NSLog(@"Dens age is %@", densAge);

    // mutableCopy is needed cause dict literal is immutable
    NSMutableDictionary *mutDict2 = [@{@"den": @20, @"bob": @30} mutableCopy];
    NSLog(@"Mutable dictionary from literal: %@", mutDict2.description);

}

@end
