//
//  Pet.h
//  ProxyDemo
//
//  Created by zhujinhui on 2017/12/23.
//  Copyright © 2017年 kyson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pet : NSObject

@property (nonatomic, strong) NSObject *intercetper;


-(void) play;

@end
