//
//  NSMutableArray+BVAdditions.m
//
//  Created by Benjamin Clayton on 03/12/2012.
//  Copyright (c) 2012 Calvium Ltd. All rights reserved.
//

#import "NSMutableArray+BVAdditions.h"

@implementation NSMutableArray (BVAdditions)
-(void) bv_moveObjectAtIndex:(NSUInteger)from toIndex:(NSUInteger)to {
    if (from < [self count] && to < [self count]) {
        id ob = self[from];
        [self removeObjectAtIndex:from];
        [self insertObject:ob atIndex:to];
    }
}
@end
