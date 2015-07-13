//
//  HelloViewController.m
//  NavigationTransitionController
//
//  Created by Johnny on 2015/7/14.
//  Copyright (c) 2015年 Chris Eidhof. All rights reserved.
//

#import "HelloViewController.h"

@interface HelloViewController ()

@end

@implementation HelloViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Back Button" style:UIBarButtonItemStylePlain target:self action:@selector(pop)];
}

- (void)pop
{
    [self.navigationController popToRootViewControllerAnimated:YES];
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
