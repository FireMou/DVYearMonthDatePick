//
//  ViewController.m
//  DVYearMonthDatePickView
//
//  Created by Fire on 16/4/23.
//  Copyright © 2016年 Fire. All rights reserved.
//

#import "ViewController.h"
#import "DVYearMonthDatePicker.h"

@interface ViewController () <DVYearMonthDatePickerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    DVYearMonthDatePicker *yearMonth = [[DVYearMonthDatePicker alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 216)];
    
    yearMonth.dvDelegate = self;
    
    [yearMonth selectToday];
    
    [self.view addSubview:yearMonth];
    
    
    
}
- (void)yearMonthDatePicker:(DVYearMonthDatePicker *)yearMonthDatePicker didSelectedDate:(NSDate *)date {
    
    NSLog(@"%@", date);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
