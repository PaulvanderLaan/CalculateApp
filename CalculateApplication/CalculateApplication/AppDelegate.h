//
//  AppDelegate.h
//  CalculateApplication
//
//  Created by Paul van der Laan on 24-05-15.
//  Copyright (c) 2015 -. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property BOOL divide;
@property BOOL multiply;
@property BOOL deduct;
@property BOOL sumUp;
@property int minimumType;

@end

