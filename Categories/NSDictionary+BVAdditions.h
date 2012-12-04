//
//  NSDictionary+BVAdditions.h
//  BVUtils
//
//  Created by Benjamin Clayton on 04/12/2012.
//  Copyright (c) 2012 Calvium Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (BVAdditions)

// e.g. config.plist
+(id) bv_dictionaryWithFileNamed:(NSString*) plist;

@end
