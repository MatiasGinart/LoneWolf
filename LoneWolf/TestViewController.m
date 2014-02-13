//
//  TestViewController.m
//  LoneWolf
//
//  Created by Matías Ginart on 13/02/14.
//  Copyright (c) 2014 Matías Ginart. All rights reserved.
//

#import "TestViewController.h"
#import "LuckyTableView.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.extendedLayoutIncludesOpaqueBars = NO;
    self.edgesForExtendedLayout = UIRectEdgeNone;

    LuckyTableView* tableView = [[LuckyTableView alloc] initWithFrame:CGRectMake(0, 0, 320, 420)];
    [self.view addSubview:tableView];
    [tableView startSpinning];
}

@end
