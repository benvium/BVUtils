//
//  UIStoryboardSegue+bv_destinationViewController.h
//
//  Created by Benjamin Clayton on 03/12/2012.
//  Copyright (c) 2012 Calvium Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIStoryboardSegue (BVAdditions)

// If the destination view controller is a UINavigationController, then return the topViewController in there. *Always* what you want to do in prepareForSegue
-(id) bv_destinationViewController;

@end
