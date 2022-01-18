//
//  ViewController.h
//  Welcome to Objc-C
//
//  Created by YesVladess on 05.11.2021.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

// Objects go with * and you initialize them using alloc init
// Primitive types (int, char, etc..) store im memory directly, so no pointer
@property(nonatomic, strong) NSString *name;
@property(nonatomic) int age;
@property(nonatomic) int *agePoint;
@property(nonatomic) NSInteger debt;
@property(nonatomic) NSNumber *bankBalance;
@property(atomic) char symbol;

@end

