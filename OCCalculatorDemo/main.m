//
//  main.m
//  OCCalculatorDemo
//
//  Created by Yi Zhang on 28/12/18.
//  Copyright © 2018 Yi Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction/FractionTest.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FractionTest *addTest;
        addTest = [[FractionTest alloc] init];
        [addTest addTest];
        
        FractionTest *sumTest;
        sumTest = [[FractionTest alloc] init];
        [sumTest sumTest];
    }
    return 0;
}
