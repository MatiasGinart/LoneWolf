//
//  LoneWolfTabBarViewController.m
//  LoneWolf
//
//  Created by Matías Ginart on 13/02/14.
//  Copyright (c) 2014 Matías Ginart. All rights reserved.
//

#import "LoneWolfTabBarViewController.h"
#import "TestViewController.h"

@interface LoneWolfTabBarViewController ()

@end

@implementation LoneWolfTabBarViewController

+ (instancetype)tabBarController {
    LoneWolfTabBarViewController* tabBarController = [[[self class] alloc] init];

    TestViewController* testViewController = [[TestViewController alloc] init];
    UINavigationController* navigationController = [[UINavigationController alloc] initWithRootViewController:testViewController];
    tabBarController.viewControllers = @[navigationController];

    return tabBarController;
}

@end
