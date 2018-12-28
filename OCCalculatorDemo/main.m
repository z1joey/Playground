//
//  main.m
//  OCCalculatorDemo
//
//  Created by Yi Zhang on 28/12/18.
//  Copyright © 2018 Yi Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"
#import "Fraction/FractionTest.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        Calculator *calculator;
//        calculator = [[Calculator alloc] init];
//        [calculator clear];
//        [calculator setAccumulator:100.0];
//        [calculator add:200.0];
//        [calculator divide:15.0];
//        [calculator subtract:10.0];
//        [calculator multiply:5];
//        NSLog(@"结果是 %g", [calculator accumulator]);

//        int number_to_test, remainder;
//        NSLog(@"输入一个数字进行测试：");
//        scanf("%i", &number_to_test);
//        remainder = number_to_test % 2;
//        if (remainder ==0)
//            NSLog(@"偶数");
//        else
//            NSLog(@"奇数");
        
//        int n, number, triangularNumber, counter;
//        for (counter = 1; counter <= 5; ++counter) {
//            NSLog(@"you want?");
//            scanf("%i", &number);
//            triangularNumber = 0;
//            for (n = 1; n <= number; ++n) {
//                triangularNumber += n;
//                NSLog(@"Triangular number %i is %i", number, triangularNumber);
//            }
//        }
        
//        for (int i = 0; i < 3; i++) {
//            NSLog(@"i的s值是: %d", i);
//            if (i == 1) {
//                continue;
//            }
//            NSLog(@"continue后输出的语句");
//        }
        
//        int i = 0;
//        start:
//        NSLog(@"i: %d", i);
//        i++;
//        if (i < 10) {
//            goto start;
//        }
        FractionTest *fractionTest;
        fractionTest = [[FractionTest alloc] init];
        [fractionTest test];
    }
    return 0;
}
