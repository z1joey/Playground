//
//  FractionTest.m
//  OCCalculatorDemo
//
//  Created by Yi Zhang on 28/12/18.
//  Copyright © 2018 Yi Zhang. All rights reserved.
//

#import "FractionTest.h"
#import "Fraction.h"

@implementation FractionTest

+(void) addTest {
    Fraction *aFraction = [[Fraction alloc] init];
    aFraction.numerator = 1;
    aFraction.denominator = 3;
    [aFraction print];
    NSLog(@" =");
    NSLog(@"%g", [aFraction convertToNum]);
    
    Fraction *bFraction = [[Fraction alloc] init];
    [bFraction setTo:1 over:3];
    [bFraction print];
    NSLog(@" =");
    NSLog(@"%g", [bFraction convertToNum]);
    
    Fraction *cFraction = [[Fraction alloc] init];
    cFraction = [aFraction add: bFraction];
    [cFraction print];
}

+(void)sumTest {
    Fraction *aFraction = [[Fraction alloc] init];
    // 这里的sum2用来获取sum，防止sum内存泄露
    Fraction *sum = [[Fraction alloc] init], *sum2;
    int i, n, pow2;
    [sum setTo:0 over:1];
    NSLog(@"输入一个数字：");
    scanf("%i", &n);
    pow2 = 2;
    for (i = 1; i <= n; ++i) {
        [aFraction setTo:1 over:2];
        sum2 = [sum add: aFraction];
        // release 在ARC中不可用
        // [sum release];
        sum = sum2;
        pow2 *= 2;
    }
    // TODO: 结果有问题，以后修复
    NSLog(@"重复%i次之后，总和为%g", n, [sum convertToNum]);
}

@end
