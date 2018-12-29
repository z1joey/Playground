//
//  FKPTest.m
//  Objective-C
//
//  Created by Yi Zhang on 29/12/18.
//  Copyright © 2018 Yi Zhang. All rights reserved.
//

#import "FKPTest.h"
#import "FKSubclass.h"

@implementation FKPTest
+ (void)test {
    FKBase *bc = [[FKBase alloc] init];
    [bc base];
    [bc test];
    FKSubclass *sc = [[FKSubclass alloc] init];
    [sc base];
    [sc test];
    [sc sub];
    // 多态发生
    FKBase *ploymophicBc = [[FKSubclass alloc] init];
    [ploymophicBc base];
    [ploymophicBc test];
    id dyna = ploymophicBc;
    [dyna sub];
}
@end
