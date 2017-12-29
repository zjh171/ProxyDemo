//
//  ViewController.m
//  ProxyDemo
//
//  Created by zhujinhui on 2017/12/23.
//  Copyright © 2017年 kyson. All rights reserved.
//

#import "ViewController.h"

#import "Pet.h"
#import "Cat.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Cat *cat = [[Cat alloc] init];;
    Pet *pet = [[Pet alloc]init];
    pet.intercetper = cat;
    
    [pet performSelector:@selector(say) withObject:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
