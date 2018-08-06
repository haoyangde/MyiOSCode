//
//  MMLeftViewController.m
//  iOSCodeCollection
//
//  Created by Benson on 2018/8/6.
//  Copyright © 2018年 Benson. All rights reserved.
//

#import "MMLeftViewController.h"
#import "MMCenterViewController.h"
#import "MMNavigationController.h"
@interface MMLeftViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *mainTableView;
@property (nonatomic, strong) UIColor *bgColor;

@end

@implementation MMLeftViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initMainTableView];

}
- (void)initMainTableView {
    self.mainTableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    self.mainTableView.delegate = self;
    self.mainTableView.dataSource = self;
    UIColor * tableViewBackgroundColor;
    tableViewBackgroundColor = [UIColor colorWithRed:110.0/255.0
                                               green:113.0/255.0
                                                blue:115.0/255.0
                                               alpha:1.0];
    self.bgColor = tableViewBackgroundColor;
    [self.mainTableView setBackgroundColor:tableViewBackgroundColor];
    [self.view addSubview:self.mainTableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID = @"leftCellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.backgroundColor = [UIColor clearColor];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.textLabel.text = @"哈哈";
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    MMCenterViewController * center = [[MMCenterViewController alloc] init];
    center.view.backgroundColor = [UIColor redColor];
    UINavigationController * nav = [[MMNavigationController alloc] initWithRootViewController:center];
    [self.mm_drawerController setCenterViewController:nav withCloseAnimation:YES completion:nil];
}

@end
