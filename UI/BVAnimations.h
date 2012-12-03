//
//  BVAnimations.h
//  Wattzo
//
//  Created by Benjamin Clayton on 23/11/2012.
//  Copyright (c) 2012 Calvium Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BVAnimations : NSObject

+ (void) scaleFadeIn:(UIView*) view delay:(float) delay completion:(void (^)(BOOL finished))completion;
+ (void) scaleFadeOut:(UIView*) view delay:(float) delay completion:(void (^)(BOOL finished))completion;
+ (void) fadeIn:(UIView*) view delay:(float) delay completion:(void (^)(BOOL finished))completion;
+ (void) fadeOut:(UIView*) view delay:(float) delay completion:(void (^)(BOOL finished))completion;

@end
