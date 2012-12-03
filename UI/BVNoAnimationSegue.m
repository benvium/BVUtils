//
//  BVNoAnimationSegue.m
//
//  Created by Benjamin Clayton on 26/11/2012.
//  Copyright (c) 2012 Calvium Ltd. All rights reserved.
//

#import "BVNoAnimationSegue.h"

@implementation BVNoAnimationSegue

- (void)perform
{
    [[self sourceViewController] presentModalViewController:[self destinationViewController] animated:NO];
}

@end
