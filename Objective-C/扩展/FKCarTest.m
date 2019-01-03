//
//  FKCarTest.m
//  Objective-C
//
//  Created by Yi Zhang on 3/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "FKCarTest.h"
#import "FKCar+drive.h"

@implementation FKCarTest
+ (void)test
{
    FKCar *car = [[FKCar alloc] init];
    car.brand = @"三系";
    car.model = @"BMW320L";
    car.color = @"白色";
    
    [car drive];
    [car drive:@"关系经"];
}
@end
