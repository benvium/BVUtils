//
//  NSError+errorWithMessage.m
//
//  Created by Benjamin Clayton on 23/11/2012.
//  Copyright (c) 2012 Calvium Ltd. All rights reserved.
//

#import "NSError+bv_errorWithMessage.h"

@implementation NSError (bv_errorWithMessage)

+(NSError*) bv_errorWithMessage:(NSString*) message code:(int) code {
    return [NSError errorWithDomain:[[NSBundle mainBundle] bundleIdentifier] code:code userInfo:[NSDictionary dictionaryWithObject:message forKey:NSLocalizedDescriptionKey]];
}

@end
