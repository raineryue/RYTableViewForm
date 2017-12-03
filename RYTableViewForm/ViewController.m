//
//  ViewController.m
//  RYTableViewForm
//
//  Created by Rainer on 2017/12/3.
//  Copyright © 2017年 Rainer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *dataArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *tableViewCellIdentifier = @"RYTableViewCellIdentifier";
    
    UITableViewCell *tableViewCell = [tableView dequeueReusableCellWithIdentifier:tableViewCellIdentifier];
    
    if (nil == tableViewCell) {
        tableViewCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableViewCellIdentifier];
    }
    
    NSString *titleString = self.dataArray[indexPath.row];
    
    tableViewCell.textLabel.text = titleString;
    
    return tableViewCell;
}

- (NSMutableArray *)dataArray {
    if (nil == _dataArray) {
        _dataArray = [NSMutableArray array];
        
        [_dataArray addObject:@"文本框控件（UITextField）"];
        [_dataArray addObject:@"开关控件  （UISwitch）"];
        [_dataArray addObject:@"带标签图片的表格"];
    }
    
    return _dataArray;
}

@end
