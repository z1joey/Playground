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
//{
//    int numerator;
//    int denominator;
//}

@property int numerator, denominator;

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) n;
-(int) numerator;
-(int) denominator;
-(double) convertToNum;
-(void) setTo: (int) n over: (int) d;
-(Fraction *) add: (Fraction *) f;

@end

NS_ASSUME_NONNULL_END
