//
//  Person.h
//  Welcome to Objc-C
//
//  Created by YesVladess on 14.01.2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
    // Instance variable
    BOOL isInsecure;
}

// Properties
@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;

@end

NS_ASSUME_NONNULL_END
