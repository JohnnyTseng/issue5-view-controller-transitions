//
//  Animator.m
//  NavigationTransitionTest
//
//  Created by Chris Eidhof on 9/27/13.
//  Copyright (c) 2013 Chris Eidhof. All rights reserved.
//

#import "Animator.h"

@implementation Animator

- (NSTimeInterval)transitionDuration:(id <UIViewControllerContextTransitioning>)transitionContext
{
    return 1;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIViewController *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    UIView *containerView = [transitionContext containerView];
    toViewController.view.frame = [transitionContext finalFrameForViewController:toViewController];
    [containerView addSubview:toViewController.view];
    [containerView sendSubviewToBack:toViewController.view];
    
    [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
        fromViewController.view.frame = CGRectMake(CGRectGetWidth(fromViewController.view.frame), 0, CGRectGetWidth(fromViewController.view.frame), CGRectGetHeight(fromViewController.view.frame));
    } completion:^(BOOL finished) {
        [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
    }];
}

@end
