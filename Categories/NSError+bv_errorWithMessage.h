//
//  NSError+errorWithMessage.h
//  SignalRTest
//
//  Created by Benjamin Clayton on 23/11/2012.
//  Copyright (c) 2012 Calvium Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSError (bv_errorWithMessage)

+(NSError*) bv_errorWithMessage:(NSString*) message code:(int) code;

@end
