//
//  Fraction.m
//  OCCalculatorDemo
//
//  Created by Yi Zhang on 28/12/18.
//  Copyright © 2018 Yi Zhang. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

-(void)print {
    NSLog(@"%i/%i", numerator, denominator);
}

-(void)setNumerator:(int)n {
    numerator = n;
}

-(void)setDenominator:(int)n {
    denominator = n;
}

-(int)numerator {
    return numerator;
}

-(int)denominator {
    return denominator;
}

-(double)convertToNum {
    if (denominator != 0) {
        return (double) numerator / denominator;
    } else {
        return 0.0;
    }
}

@end
