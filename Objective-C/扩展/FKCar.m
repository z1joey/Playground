//
//  FKCar.m
//  Objective-C
//
//  Created by Yi Zhang on 3/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "FKCar.h"
#import "FKCar+drive.h"

@implementation FKCar
- (void)drive
{
    NSLog(@"%@汽车正在路上飞奔", self);
}
- (void)drive:(NSString *) owner
{
    NSLog(@"%@正驾驶%@汽车在路上飞奔", owner, self);
}
- (NSString *)description
{
    return [NSString stringWithFormat:@"brand=%@, model=%@, color=%@", self.brand, self.model, self.color];
}
@end
