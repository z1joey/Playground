//
//  Model.m
//  ArchiverTestOne
//
//  Created by Yi Zhang on 8/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import "Model.h"

@implementation Model
- (instancetype)initWithCoder:(NSCoder *)coder
{
    //self = [super initWithCoder:coder];
    if (self) {
        _name    = [coder decodeObjectForKey:@"name"];
        _address = [coder decodeObjectForKey:@"address"];
        _age     = [[coder decodeObjectForKey:@"age"] intValue];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder
{
    //[super encodeWithCoder:coder];
    [coder encodeObject:_name forKey:@"name"];
    [coder encodeObject:_address forKey:@"address"];
    [coder encodeInt:_age forKey:@"age"];
}

+ (BOOL)supportsSecureCoding
{
    return YES;
}

@end
