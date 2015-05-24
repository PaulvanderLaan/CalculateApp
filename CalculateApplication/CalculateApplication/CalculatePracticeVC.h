//
//  SecondViewController.h
//  CalculateApplication
//
//  Created by Paul van der Laan on 24-05-15.
//  Copyright (c) 2015 -. All rights reserved.
//

#import <UIKit/UIKit.h>
@class AppDelegate;

@interface CalculatePracticeVC : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) AppDelegate *appDelegate;
@property (nonatomic, retain) NSMutableArray *typeOptions;

@end

