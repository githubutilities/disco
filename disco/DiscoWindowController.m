//
//  DiscoWindowController.m
//  disco
//
//  Created by will on 8/10/15.
//  Copyright © 2015 githubutilities. All rights reserved.
//

#import "DiscoWindowController.h"

@implementation DiscoWindowController

- (void)windowDidLoad {
    [self.window setCollectionBehavior:NSWindowCollectionBehaviorFullScreenPrimary];
    [self.window setFrame:[[NSScreen mainScreen] frame] display:YES];
    [self.window toggleFullScreen:self];
    self.window.backgroundColor = [NSColor redColor];
    
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:0.2 target:self selector:@selector(changeBackgroundColor) userInfo:nil repeats:YES];
    NSRunLoop *runner = [NSRunLoop currentRunLoop];
    [runner addTimer:timer forMode:NSDefaultRunLoopMode];
}

- (void) changeBackgroundColor {
    self.window.backgroundColor = [self randomColor];
}

- (NSColor *)randomColor {
    NSColor *retColor = nil;
    switch (arc4random() % 5) {
        case 0:
            retColor = [NSColor redColor];
            break;
        case 1:
            retColor = [NSColor yellowColor];
            break;
        case 2:
            retColor = [NSColor blueColor];
            break;
        case 3:
            retColor = [NSColor greenColor];
            break;
        case 4:
            retColor = [NSColor blackColor];
            break;
        default:
            retColor = [NSColor whiteColor];
            break;
    }
    return retColor;
}

@end
