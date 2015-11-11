//
//  Notifier.m
//  usb-mount-notifier
//
//  Created by Александр Кунин on 11.11.15.
//  Copyright © 2015 Skydebrby. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Notifier : NSObject
@end

@implementation Notifier : NSObject

- (void)didMountMethod:(NSNotification *)notification
{
    printf("%s%s\n", "mounted: ", [[notification userInfo][@"NSDevicePath"] UTF8String]);
}

- (void)didUnmountMethod:(NSNotification *)notification
{
    printf("%s%s\n", "unmounted: ", [[notification userInfo][@"NSDevicePath"] UTF8String]);
}

@end
