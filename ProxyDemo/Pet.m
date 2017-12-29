//
//  Pet.m
//  ProxyDemo
//
//  Created by zhujinhui on 2017/12/23.
//  Copyright © 2017年 kyson. All rights reserved.
//

#import "Pet.h"

@implementation Pet


-(void) play{
    NSLog(@"pay");
}

-(void)forwardInvocation:(NSInvocation *)invocation
{
    [invocation setTarget:self.intercetper];
    
    //开始调用方法
    [invocation invoke];
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel
{
    NSMethodSignature *signature = nil;
    
    if ([self.intercetper methodSignatureForSelector:sel]) {
        signature = [self.intercetper methodSignatureForSelector:sel];
    }else{
        signature = [self methodSignatureForSelector:sel];
    }
    return signature;
    
}


@end
