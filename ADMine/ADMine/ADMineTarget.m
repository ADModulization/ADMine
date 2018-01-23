//
//  ADMineTarget.m
//  ADMine
//
//  Created by Andy on 23/01/2018.
//  Copyright © 2018 Andy. All rights reserved.
//

#import "ADMineTarget.h"

@implementation ADMineTarget

- (NSString *)changeBackgroundColor:(NSDictionary *)info
{
    if ([[info objectForKey:@"backgroundColor"] isKindOfClass:[UIColor class]]) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"ADMineChangeBackgroundColorNotification" object:[info objectForKey:@"backgroundColor"]];
        return @"我正在变色，快来看吧！";
    }
    return @"请给告诉我变成什么颜色";
}

@end
