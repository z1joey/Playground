//
//  Model.h
//  ArchiverTestOne
//
//  Created by Yi Zhang on 8/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Model : NSObject<NSSecureCoding>
@property (nonatomic, strong)NSString *name;
@property (nonatomic, strong)NSString *address;
@property (nonatomic, assign)int age;
//- (instancetype) initWithCoder:(NSCoder *)aDecoder;
//- (void) encodeWithCoder: (NSCoder *) coder;
@end

NS_ASSUME_NONNULL_END
