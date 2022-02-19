//
//  MountainMath.m
//  Welcome to Objc-C
//
//  Created by YesVladess on 24.01.2022.
//

#import "MountainMath.h"

@implementation MountainMath

- (void) startLesson {

    // No need to use native C types unlil you have to
    // The limits are you can't store native C types into objc objects, for ex: you can't put them into NSArray

    int iAmInt = 3;
    // This won't work
    // NSArray *array = @[iAmInt];
    double iAmADouble = 3.5;
    float iAmTheFloat = 2.888881;

    NSLog(@"Int: %d", iAmInt);
    NSLog(@"Double: %f", iAmADouble);
    NSLog(@"Float: %f", iAmTheFloat);

    // If you want to store your number, you can use NSNumber
    NSNumber *intNumber = [NSNumber numberWithInt:7];
    NSNumber *anotherIntNumber = [NSNumber numberWithInt:3];
    // To grab the value
    int rawInt = [intNumber intValue];
    int anotherWayToGetRawInt = anotherIntNumber.intValue;

    int sum = rawInt + anotherWayToGetRawInt;
    NSLog(@"Sum: %d", sum);

    // With NSNumbers we CAN strore them in NSArray
    NSArray *array = @[intNumber, anotherIntNumber];

    // Convert to NSString
    NSString *intNumberString = intNumber.stringValue;
    NSLog(@"converted string is %@", intNumberString);

    // NSNumber is not a traditional number
    NSNumber *numberIGuess = [NSNumber numberWithBool:TRUE];

    // A typedef for an int (pre - precessing).
    // Can vary from 32 to 64 bit systems, NSInteger is more recomended to use, but either are fine
    NSInteger *integer = 55;
    // Still won't work, cause it's only an typedef (alias?)
    //NSArray *arrayOfInts = @[integer];

    NSInteger *anotherInt = 30;

    // Can't add objects...
    //NSInteger *sumInteger = integer + anotherInt;

    NSNumber *sumInt = [NSNumber numberWithInt:[intNumber intValue] + [anotherIntNumber intValue]];
    sumInt = [NSNumber numberWithInt:(intNumber.intValue + anotherIntNumber.intValue)];
    NSLog(@"It's easy to add number in objc! Sum is: %@", sumInt);

}

@end
