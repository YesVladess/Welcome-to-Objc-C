//
//  NoBullying.m
//  Welcome to Objc-C
//
//  Created by YesVladess on 06.02.2022.
//

#import "NoBullying.h"

@implementation NoBullying

- (void) startLesson {

    // What are theese?
    bool *whoAmI; // C type
    Boolean *youToBlame; // Old historic type from Carbon
    boolean_t *isSheForReal;

    // Main bool, it's not objects, it's value types, so no pointers
    // Preferred way?
    BOOL whatIsLove = YES;
    // Not preferred?
    BOOL missMyBaby = FALSE;

    if (whatIsLove || !missMyBaby) {
        NSLog(@"Baby don't hurt me");
    } else
        NSLog(@"Don't know what is love"); // For single line statement there is no need to use curlyBraces

    // Kind of swift optionals
    NSString *name = nil;
    if (name)
        NSLog(@"there is a name %@", name);
    else NSLog(@"there is no name");

    name = @"Cpt. Jack Sparrow";
    if (name)
        NSLog(@"there is a name %@", name);
    else NSLog(@"there is no name");

}
@end
