//
//  BVHidableSectionTableViewController.h
//  Wattzo
//
//  Created by Benjamin Clayton on 13/02/2013.
//  Copyright (c) 2013 Calvium Ltd. All rights reserved.
//

#import "CVTableViewController.h"

@interface BVHidableSectionTableViewController : CVTableViewController

- (void) hideSection:(int) index;
- (void) showSection:(int) index;
- (void) showAllSections;

@end
