//
//  Copyright (c) 2011-2022, Zingaya, Inc. All rights reserved.
//


#import "Vehicle.h"

@implementation Vehicle

-(void) setOdometer:(long)odometer {
    if (odometer > _odometer) {
        _odometer = odometer;
    }
}

-(NSString*)model {
    if ([_model isEqualToString:@"Honda Civic"]) {
        return @"POS";
    } else {
        return _model;
    }
}
@end
