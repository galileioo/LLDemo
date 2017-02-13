//
//  LLDemoListViewController.m
//  LLDemo
//
//  Created by galileio on 2016/12/21.
//  Copyright © 2016年 ctw. All rights reserved.
//

#import "LLDemoListViewController.h"
#import "LLTestCopyViewController.h"
#import "LLMacroViewController.h"
@interface LLDemoListViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    NSArray * titleArr;
}
@end

@implementation LLDemoListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    titleArr = @[@"NSString测试copy",@"宏定义学习"];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return titleArr.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * identify = @"demoCell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
    }
    cell.textLabel.text = titleArr[indexPath.row];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIViewController * vc;
    NSString * classString;
    if (indexPath.row == 0) {
        classString = @"LLTestCopyViewController";
        Class VCClass = NSClassFromString(classString);
        UIViewController * vc = [[VCClass alloc] initWithNibName:classString bundle:nil];
        vc.title =  titleArr[indexPath.row];
           }
    else if(indexPath.row == 1)
    {
        
    }
    
     vc.title =  titleArr[indexPath.row];
    [self.navigationController pushViewController:vc animated:YES];

   
}
@end
