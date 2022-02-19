//
//  MethodMan.m
//  Welcome to Objc-C
//
//  Created by YesVladess on 19.02.2022.
//
#import <UIKit/UIKit.h>
#import "MethodMan.h"
#import "Persona.h"

@interface MethodMan()
@property (nonatomic) double bankAccount;
@property (nonatomic) double itemAmount;
@end

@implementation MethodMan

- (void) myFunc {
    _bankAccount = 500.50;
    _itemAmount = 400.00;

    [self playground];
    NSLog(@"Persona said: %@", [Persona iAmAPerson]);

    UIImage *image = [UIImage imageWithData:
                          [NSData dataWithContentsOfURL:
                           [NSURL URLWithString:
                            @"https://google.com"]]];

    NSString *urlString = @"http://google.com";
    NSURL *url = [NSURL URLWithString: urlString];
    NSData *data = [NSData dataWithContentsOfURL: url];
    image = [UIImage imageWithData: data];

    NSLog(@"Image: %@", image.description);

    NSNumber *number = [NSNumber numberWithInt:55];
    // Accessing a property only
    NSLog(@"Number: %@", number.stringValue);
    // This could be property or method call
    NSLog(@"Number: %@", [number stringValue]);
    // Better use 1 variant for properties and 2 variant for methods
}

- (BOOL) canPurchase:(double)amount {

    if (_bankAccount >= amount)
        return TRUE;
    
    return FALSE;
}

- (void) declareWinnersWithPlayerAScore:(NSInteger)scoreA playerBScore:(NSInteger)scoreB {

    if (scoreA > scoreB)
        NSLog(@"Player A wins");
    else if (scoreB > scoreA)
        NSLog(@"Player B wins");
    else
        NSLog(@"It's a tie");
}

- (void) playground {

    if ([self canPurchase:_itemAmount])
        NSLog(@"We can buy");

    [self declareWinnersWithPlayerAScore:55 playerBScore:55];
}

@end
