//
//  BVHidableSectionTableViewController.m
//
//  Created by Benjamin Clayton on 13/02/2013.
//  Copyright (c) 2013 Calvium Ltd. All rights reserved.
//

#import "BVHidableSectionTableViewController.h"

@interface BVHidableSectionTableViewController () {
    NSMutableArray* _hiddenSections;
}

@end

@implementation BVHidableSectionTableViewController

//-----------------------------------------------------
#pragma mark - UIViewController
//-----------------------------------------------------

- (void) viewDidLoad {
    [super viewDidLoad];
    
    int sections = [super numberOfSectionsInTableView:self.tableView];
    _hiddenSections = [NSMutableArray new];
    for (int i = 0; i < sections; i++) {
        [_hiddenSections addObject:@(NO)];
    }
}

//-----------------------------------------------------
#pragma mark - Public API
//-----------------------------------------------------


- (void) hideSection:(int) index {
    if (index >= 0 && index < _hiddenSections.count) {
        _hiddenSections[index] = @(YES);
        
        [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:index] withRowAnimation:UITableViewRowAnimationNone];
    }
}

- (void) showSection:(int) index {
    if (index >= 0 && index < _hiddenSections.count) {
        _hiddenSections[index] = @(NO);
        
        [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:index] withRowAnimation:UITableViewRowAnimationNone];
    }
}

- (void) showAllSections {
    for (int i = 0; i < _hiddenSections.count; i++) {
        _hiddenSections[i] = @(NO);
    }
    
    [self.tableView reloadData];
}

//-----------------------------------------------------
#pragma mark - Implementation
//-----------------------------------------------------

-(BOOL) shouldHideSection:(NSInteger) section {
    if (section >= 0 && section < [_hiddenSections count]) {
        return [_hiddenSections[section] boolValue];
    }
    return NO;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if ([self shouldHideSection:section]) {
        return 0;
    }
    
    return [super tableView:tableView numberOfRowsInSection:section];
}

-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    if ([self shouldHideSection:section]) {
        return [[UIView alloc] initWithFrame:CGRectZero];
    }
    
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{    
    if ([self shouldHideSection:section]) {
        return 1;
    }
    
    return [super tableView:tableView heightForHeaderInSection:section];
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    if ([self shouldHideSection:section]) {
        return 1;
    }
    
    return [super tableView:tableView heightForFooterInSection:section];
}

-(UIView*)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    if ([self shouldHideSection:section]) {
        return [[UIView alloc] initWithFrame:CGRectZero];
    }

    return [super tableView:tableView viewForFooterInSection:section];
}

@end
