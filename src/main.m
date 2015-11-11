//
//  main.m
//  usb-mount-notifier
//
//  Created by Александр Кунин on 11.11.15.
//  Copyright © 2015 Skydebrby. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AppKit/NSWorkspace.h>
#import "Notifier.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Notifier *notifier = [[Notifier alloc] init];
        
        NSNotificationCenter *notificationCenter = [[NSWorkspace sharedWorkspace] notificationCenter];
        
        SEL didMountMethod = @selector(didMountMethod:);
        SEL didUnmountMethod = @selector(didUnmountMethod:);
        
        [notificationCenter addObserver:notifier selector:didMountMethod name:NSWorkspaceDidMountNotification object:nil];
        [notificationCenter addObserver:notifier selector:didUnmountMethod name:NSWorkspaceDidUnmountNotification object:nil];
        
        NSRunLoop *runLoop = [NSRunLoop currentRunLoop];
        [runLoop run];
    
    }
    
    return 0;
}