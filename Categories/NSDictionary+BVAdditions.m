//
//  NSDictionary+BVAdditions.m
//  BVUtils
//
//  Created by Benjamin Clayton on 04/12/2012.
//  Copyright (c) 2012 Calvium Ltd. All rights reserved.
//

#import "NSDictionary+BVAdditions.h"

@implementation NSDictionary (BVAdditions)

+(id) bv_dictionaryWithFileNamed:(NSString*) plist {
    return [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:[plist substringToIndex:[plist length] - 6] ofType:@"plist"]];
}

@end
