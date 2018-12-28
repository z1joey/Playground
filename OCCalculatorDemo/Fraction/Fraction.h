//
//  Fraction.h
//  OCCalculatorDemo
//
//  Created by Yi Zhang on 28/12/18.
//  Copyright © 2018 Yi Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Fraction : NSObject
{
    int numerator;
    int denominator;
}

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) n;
-(int) numerator;
-(int) denominator;
-(double) convertToNum;

@end

NS_ASSUME_NONNULL_END
