//
//  MMCenterViewController.m
//  iOSCodeCollection
//
//  Created by Benson on 2018/8/6.
//  Copyright © 2018年 Benson. All rights reserved.
//

#import "MMCenterViewController.h"


@interface MMCenterViewController ()

@end

@implementation MMCenterViewController


- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    [self setupLeftMenuButton];
    
}

-(void)setupLeftMenuButton{
    MMDrawerBarButtonItem * leftDrawerButton = [[MMDrawerBarButtonItem alloc] initWithTarget:self action:@selector(leftDrawerButtonPress:)];
    [self.navigationItem setLeftBarButtonItem:leftDrawerButton animated:YES];
}

#pragma mark - Button Handlers
-(void)leftDrawerButtonPress:(id)sender{
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
}

@end
