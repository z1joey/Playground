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

-(void) addTest {
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

@end
