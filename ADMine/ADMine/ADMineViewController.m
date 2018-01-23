//
//  ADMineViewController.m
//  ADMine
//
//  Created by Andy on 23/01/2018.
//  Copyright © 2018 Andy. All rights reserved.
//

#import "ADMineViewController.h"
#import "ADMineDetailViewController.h"

@interface ADMineViewController ()

@property (nonatomic, strong) UILabel *label;

@end

@implementation ADMineViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeBackgroundColor:) name:@"ADMineChangeBackgroundColorNotification" object:nil];
    
    [self.view addSubview:self.label];
    self.label.frame = CGRectMake(0, 200, self.view.frame.size.width, 30);
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)changeBackgroundColor:(NSNotification *)notification
{
    [UIView animateWithDuration:3 animations:^{
        self.view.backgroundColor = notification.object;
    }];
}

- (NSString *)title
{
    return @"我的";
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    ADMineDetailViewController *detailVC = [[ADMineDetailViewController alloc] init];
    [self.navigationController pushViewController:detailVC animated:YES];
}

- (UILabel *)label
{
    if (!_label) {
        _label = [[UILabel alloc] init];
        _label.text = @"Hello, Mine.";
        _label.textColor = [UIColor blackColor];
        _label.font = [UIFont systemFontOfSize:20];
        _label.textAlignment = NSTextAlignmentCenter;
    }
    return _label;
}


@end
