//
//  FKPerson.h
//  OCCalculatorDemo
//
//  Created by Yi Zhang on 28/12/18.
//  Copyright © 2018 Yi Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FKPerson : NSObject
{
    NSString *_name;
    int _age;
}

-(void) setName: (NSString *) name andAge: (int) age;
-(void) say: (NSString *) content;
-(NSString *) info;
+(void) foo;
@end

NS_ASSUME_NONNULL_END
