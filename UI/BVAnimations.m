//
//  BVAnimations.m
//  Wattzo
//
//  Created by Benjamin Clayton on 23/11/2012.
//  Copyright (c) 2012 Calvium Ltd. All rights reserved.
//

#import "BVAnimations.h"

@implementation BVAnimations


+ (void) scaleFadeOut:(UIView*) view delay:(float) delay completion:(void (^)(BOOL finished))completion {
    if (view.hidden) {
        if (completion) {
            completion(YES);
        }
        return;
    }
    
    view.hidden = NO;

    [UIView animateWithDuration:0.2 delay:delay options:UIViewAnimationOptionCurveEaseOut|UIViewAnimationOptionBeginFromCurrentState animations:^{
        view.transform = CGAffineTransformMakeScale(0.3, 0.3);
        view.alpha = 0;
    } completion:^(BOOL finished) {
        view.hidden = YES;
        if (completion) {
            completion(finished);
        }
        
    }];
}

+ (void) scaleFadeIn:(UIView*) view delay:(float) delay completion:(void (^)(BOOL finished))completion {
    view.hidden = NO;
    view.alpha = 0.0;
    view.transform = CGAffineTransformMakeScale(0.3, 0.3);
    
    [UIView animateWithDuration:0.2 delay:delay options:UIViewAnimationOptionCurveEaseOut|UIViewAnimationOptionBeginFromCurrentState animations:^{
        view.transform = CGAffineTransformMakeScale(1, 1);
        view.alpha = 1;
    } completion:completion];
}

+ (void) fadeIn:(UIView*) view delay:(float) delay completion:(void (^)(BOOL finished))completion {
    view.hidden = NO;
    view.alpha = 0.0;
    
    [UIView animateWithDuration:0.2 delay:delay options:UIViewAnimationOptionCurveLinear|UIViewAnimationOptionBeginFromCurrentState animations:^{
        view.alpha = 1.0;
    } completion:completion];
}

+ (void) fadeOut:(UIView*) view delay:(float) delay completion:(void (^)(BOOL finished))completion {
    if (view.hidden) {
        if (completion ) {
            completion(YES);
        }
        return;
    }
    
    view.hidden = NO;
    
    [UIView animateWithDuration:0.2 delay:delay options:UIViewAnimationOptionCurveLinear|UIViewAnimationOptionBeginFromCurrentState animations:^{
        view.alpha = 0;
    } completion:^(BOOL finished) {
        view.hidden = YES;
        if (completion) {
            completion(finished);
        }
    }];
}



@end
