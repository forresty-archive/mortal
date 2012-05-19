//
//  AppDelegate.m
//  Mortal
//
//  Created by Feng Ye on 5/20/12.
//  Copyright (c) 2012 @forresty. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize menubarController;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
  self.menubarController = [[MenubarController alloc] init];
}

@end
