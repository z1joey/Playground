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

-(void) test {
    Fraction *aFraction = [[Fraction alloc] init];
    Fraction *bFraction = [[Fraction alloc] init];
    [aFraction setNumerator:1];
    [aFraction setDenominator:4];
    [aFraction print];
    NSLog(@" =");
    NSLog(@"%g", [aFraction convertToNum]);
    
    [bFraction print];
    NSLog(@" =");
    NSLog(@"%g", [bFraction convertToNum]);
}

@end
