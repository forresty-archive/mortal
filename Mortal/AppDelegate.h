//
//  AppDelegate.h
//  Mortal
//
//  Created by Feng Ye on 5/20/12.
//  Copyright (c) 2012 @forresty. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "StatusBarController.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (nonatomic, strong) StatusBarController *statusBarController;

@end
