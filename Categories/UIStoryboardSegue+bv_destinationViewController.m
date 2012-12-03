//
//  UIStoryboardSegue+bv_destinationViewController.m
//  BVUtils
//
//  Created by Benjamin Clayton on 03/12/2012.
//  Copyright (c) 2012 Calvium Ltd. All rights reserved.
//

#import "UIStoryboardSegue+bv_destinationViewController.h"

@implementation UIStoryboardSegue (bv_destinationViewController)

-(id) bv_destinationViewController {
    UIViewController* root = [self destinationViewController];
    
    // TODO: Tab Bar controllers?
    if ([root isKindOfClass:[UINavigationController class]]) {
        return ((UINavigationController*)root).topViewController;
    } else {
        return root;
    }
}

@end
