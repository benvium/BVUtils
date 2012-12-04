//
//  NSMutableArray+BVAdditions
//
//  Created by Benjamin Clayton on 03/12/2012.
//  Copyright (c) 2012 Calvium Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (BVAdditions)

-(void) bv_moveObjectAtIndex:(NSUInteger)from toIndex:(NSUInteger)to;

@end
