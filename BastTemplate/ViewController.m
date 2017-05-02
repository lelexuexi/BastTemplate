//
//  ViewController.m
//  BastTemplate
//
//  Created by ios004 on 2017/5/2.
//  Copyright © 2017年 zsb2c. All rights reserved.
//

#import "ViewController.h"

#import "BastSysTabBarController.h"
#import "BastCustomTabBarController.h"
#import "BastViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    NSMutableArray  * listArray ;
    UITableView * mytableViw ;
}
@end

@implementation ViewController


- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self addTabelView];
    [self addDatas];
}

- (void)addTabelView
{
    mytableViw = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height ) style:UITableViewStylePlain];
    mytableViw.tag = 1 ;
    mytableViw.delegate = self ;
    mytableViw.dataSource = self ;
    [self.view addSubview:mytableViw];
}

- (void)addDatas
{

    listArray = [[NSMutableArray alloc]init];
    
    [listArray addObject:@"System Tabbar"];
    [listArray addObject:@"custom1 Tabbar"];
    [listArray addObject:@"custom2 Tabbar"];
    [listArray addObject:@"custom3 Tabbar"];
    
    [mytableViw reloadData];
}


#pragma mark - UITableViewDelegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return listArray.count ;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1 ;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return  0.1 ;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UIView * footView = [[UIView alloc]init];
    return footView;
    //    return nil ;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * classCELL5 = @"Mycell15";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:classCELL5];
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:classCELL5];
    }
    
    cell.textLabel.text = listArray[indexPath.section];
//    cell.selectionStyle = UITableViewCellSelectionStyleNone;    //取消点击风格
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    if ([cell respondsToSelector:@selector(setSeparatorInset:)])
    {  [cell setSeparatorInset:UIEdgeInsetsZero];  }
    if ([cell respondsToSelector:@selector(setLayoutMargins:)])
    { [cell setLayoutMargins:UIEdgeInsetsZero];  }
    return cell;
    
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        
        BastSysTabBarController * tabbar = [[BastSysTabBarController alloc]init];
        BastViewController * bastVC1 = [[BastViewController alloc]init];
        BastViewController * bastVC2 = [[BastViewController alloc]init];
        BastViewController * bastVC3 = [[BastViewController alloc]init];
        tabbar.viewControllers = @[bastVC1,bastVC2,bastVC3];
        
        [self presentViewController:tabbar animated:YES completion:^{}];
        
        
    }else if(indexPath.section == 1)
    {
        BastCustomTabBarController * tabbar = [[BastCustomTabBarController alloc]init];
        BastViewController * bastVC1 = [[BastViewController alloc]init];
        BastViewController * bastVC2 = [[BastViewController alloc]init];
        BastViewController * bastVC3 = [[BastViewController alloc]init];
        tabbar.viewControllers = @[bastVC1,bastVC2,bastVC3];
        
        [self presentViewController:tabbar animated:YES completion:^{}];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
