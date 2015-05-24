//
//  SecondViewController.m
//  CalculateApplication
//
//  Created by Paul van der Laan on 24-05-15.
//  Copyright (c) 2015 -. All rights reserved.
//

#import "CalculatePracticeVC.h"
#import "AppDelegate.h"
typedef enum _type_option_t {
    TYPE_OPTION_DIVIDE,
    TYPE_OPTION_SUMUP,
    TYPE_OPTION_MULTIPLY,
    TYPE_OPTION_DEDUCT,
    TYPE_OPTION_DONE
} type_option_t ;

@interface CalculatePracticeVC ()

@end

@implementation CalculatePracticeVC
@synthesize typeOptions;
@synthesize appDelegate;

#pragma view
- (void)initView {
    [appDelegate setMultiply:NO];
    [appDelegate setDeduct:NO];
    [appDelegate setSumUp:NO];
    [appDelegate setDivide:NO];
    [self setTitle:@"Choose type"];
}


#pragma  model
- (void)initTypeOptions {
    NSDictionary *typeOption;
    typeOptions = [[NSMutableArray alloc] init];
    typeOption = [NSDictionary dictionaryWithObjectsAndKeys:@"Multiply", @"option", nil];
    [typeOptions addObject:typeOption];
    typeOption = [NSDictionary dictionaryWithObjectsAndKeys:@"Deduct", @"option", nil];
    [typeOptions addObject:typeOption];
    typeOption = [NSDictionary dictionaryWithObjectsAndKeys:@"Sum up", @"option", nil];
    [typeOptions addObject:typeOption];
    typeOption = [NSDictionary dictionaryWithObjectsAndKeys:@"Divide", @"option", nil];
    [typeOptions addObject:typeOption];
    typeOption = [NSDictionary dictionaryWithObjectsAndKeys:@"Done", @"option", nil];
    [typeOptions addObject:typeOption];
}


#pragma delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch ([indexPath row]) {
        case TYPE_OPTION_MULTIPLY   : if ([appDelegate multiply] == YES) { [appDelegate setMultiply:NO]; } else { [appDelegate setMultiply:YES];}
            break;
        case TYPE_OPTION_DEDUCT     : if ([appDelegate deduct] == YES)   { [appDelegate setDeduct:NO];   } else { [appDelegate setDeduct:YES];}
            break;
        case TYPE_OPTION_SUMUP      : if ([appDelegate sumUp] == YES)    { [appDelegate setSumUp:NO];    } else { [appDelegate setSumUp:YES];}
            break;
        case TYPE_OPTION_DIVIDE     : if ([appDelegate divide] == YES)   { [appDelegate setDivide:NO];   } else { [appDelegate setDivide:YES];}
            break;
        case TYPE_OPTION_DONE       : if ([appDelegate multiply] == YES ||
                                          [appDelegate deduct] == YES ||
                                          [appDelegate sumUp] == YES ||
                                          [appDelegate divide] == YES) {
            NSLog(@"going to next view");
        };
            break;

        default: exit(EXIT_FAILURE); break;
    }
}


#pragma datasource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)table {
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"";
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *typeOption = [typeOptions objectAtIndex:[indexPath row]];
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    [[cell textLabel] setText:[typeOption objectForKey:@"option"]];
    //[cell setAccessoryType:UITableViewCellAccessoryCheckmark];
    return cell;
}



- (void)viewDidLoad {
    appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [self initTypeOptions];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
