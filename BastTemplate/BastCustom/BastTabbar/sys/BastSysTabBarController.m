//
//  BastSysTabBarController.m
//  BastTemplate
//
//  Created by ios004 on 2017/5/2.
//  Copyright © 2017年 zsb2c. All rights reserved.
//

#import "BastSysTabBarController.h"
#import "BastViewController.h"

@interface BastSysTabBarController ()

@end

@implementation BastSysTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    BastViewController * bastVC1 = [[BastViewController alloc]init];
    BastViewController * bastVC2 = [[BastViewController alloc]init];
    BastViewController * bastVC3 = [[BastViewController alloc]init];
    self.viewControllers = @[bastVC1,bastVC2,bastVC3];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
