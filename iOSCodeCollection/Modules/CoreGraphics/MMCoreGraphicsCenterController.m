//
//  MMCoreGraphicsCenterController.m
//  iOSCodeCollection
//
//  Created by Benson on 2018/8/8.
//  Copyright © 2018年 Benson. All rights reserved.
//

#import "MMCoreGraphicsCenterController.h"
#import "MMCoreGraphicTriangleController.h"

@interface MMCoreGraphicsCenterController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *mainTableView;

@property (nonatomic, strong) NSArray *listArray;

@end

@implementation MMCoreGraphicsCenterController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"Graphics";
    
    self.listArray = @[
                       @"画三角形",
                       ];
    [self createMainTableView];
}

- (void)createMainTableView {
    self.mainTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.mainTableView.delegate = self;
    self.mainTableView.dataSource = self;
    [self.view addSubview:self.mainTableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.listArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID = @"CoreGraphicsCenterCellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.backgroundColor = [UIColor clearColor];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.textLabel.text = [self.listArray objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *title = [self.listArray objectAtIndex:indexPath.row];
    UIViewController *controller = nil;
    if ([title isEqualToString:@"画三角形"]) {
        controller = [[MMCoreGraphicTriangleController alloc] init];
        
    } else {
        controller = [[UIViewController alloc] init];
    }
    [self.navigationController pushViewController:controller animated:YES];
}



@end
