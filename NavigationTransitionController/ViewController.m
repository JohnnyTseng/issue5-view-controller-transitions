//
//  ViewController.m
//  NavigationTransitionController
//
//  Created by Chris Eidhof on 09.10.13.
//  Copyright (c) 2013 Chris Eidhof. All rights reserved.
//

#import "ViewController.h"
#import "NavigationControllerDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Test1" style:UIBarButtonItemStylePlain target:self action:NULL];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Test2" style:UIBarButtonItemStylePlain target:self action:NULL];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
