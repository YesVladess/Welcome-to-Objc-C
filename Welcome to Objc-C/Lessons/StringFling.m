//
//  StringFling.m
//  Welcome to Objc-C
//
//  Created by YesVladess on 23.01.2022.
//

#import "StringFling.h"

@implementation StringFling


- (void) startLesson {
    NSString *firstName = @"Vasya";
    NSString *lastName = [[NSString alloc] init];
    lastName = @"Malkovich";
    NSLog(@"Name is: %@", firstName);

    NSString *fullName = [NSString stringWithFormat:@"%@ %@ %@", firstName, lastName, @"Charles the III"];
    NSLog(@"Fullname: %@", fullName);

    NSString *superFullName = [fullName stringByAppendingString:@" - Died 1448"];
    NSLog(@"SuperFullName: %@", superFullName);

    NSString *anotherLastName = @"Malkovich";

    // Wrong way to compare string with != or ==
    if (firstName != lastName) {
        NSLog(@"This is not equal!");
    }

    // Right way is
    if ([lastName isEqualToString:anotherLastName]) {
        NSLog(@"%@ is equal to %@", lastName, anotherLastName);
    }

    NSString *lowercaseString = @"malkovich";
    if ([lastName.lowercaseString isEqualToString:lowercaseString]) {
        NSLog(@"%@ is equal to %@ when lovercased", lastName, lowercaseString);
    }

    if ([lastName caseInsensitiveCompare:lowercaseString] == NSOrderedSame) {
        NSLog(@"case Insensitive compared and is equal");
    }
}

@end
