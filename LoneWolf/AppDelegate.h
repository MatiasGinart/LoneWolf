//
//  AppDelegate.h
//  LoneWolf
//
//  Created by Matías Ginart on 12/02/14.
//  Copyright (c) 2014 Matías Ginart. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoneWolfTabBarViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) LoneWolfTabBarViewController* tabBarController;

@end
