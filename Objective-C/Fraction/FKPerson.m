//
//  FKPerson.m
//  OCCalculatorDemo
//
//  Created by Yi Zhang on 28/12/18.
//  Copyright © 2018 Yi Zhang. All rights reserved.
//

#import "FKPerson.h"

@implementation FKPerson
{
    int _testAttr;
}

-(void)setName:(NSString *)name andAge:(int)age {
    _name = name;
    _age  = age;
}

-(void)say:(NSString *)content {
    NSLog(@"%@", content);
}

-(NSString *)info {
    [self test];
    return [NSString stringWithFormat:@"我名字为 %@, 年龄 %d", _name, _age];
}

-(void) test {
    NSLog(@"--只在实现部分定义的test方法--");
}

+ (void)foo {
    NSLog(@"FKPerson类方法");
}

@end
