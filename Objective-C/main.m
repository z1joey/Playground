//
//  main.m
//  Objective-C
//
//  Created by Yi Zhang on 29/12/18.
//  Copyright © 2018 Yi Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction/FractionTest.h"
#import "FKPerson/FKTest.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        [FractionTest addTest];
        [FractionTest sumTest];
        [FKTest testFK];
    }
    return 0;
}
