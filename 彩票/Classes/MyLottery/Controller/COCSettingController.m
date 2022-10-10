//
//  COCSettingController.m
//  彩票
//
//  Created by MAC on 2022/10/8.
//

#import "COCSettingController.h"

@interface COCSettingController ()

@end

@implementation COCSettingController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"设置";
    UIBarButtonItem *btn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"NavBack"] style:UIBarButtonItemStylePlain target:self action:@selector(backClick)];
    self.navigationItem.leftBarButtonItem = btn;
    
}
- (void)backClick{
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}


@end
