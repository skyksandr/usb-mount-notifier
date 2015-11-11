//
//  Notifier.h
//  usb-mount-notifier
//
//  Created by Александр Кунин on 11.11.15.
//  Copyright © 2015 Skydebrby. All rights reserved.
//

#ifndef Notifier_h
#define Notifier_h

@interface Notifier : NSObject
    
// enter this method when a volume is mounted
- (void)didMountMethod:(NSNotification *)notification;
// enter this method when a volume is unmounted
- (void)didUnmountMethod:(NSNotification *)notification;

@end

#endif /* Notifier_h */
