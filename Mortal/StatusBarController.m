//
//  StatusBarController.m
//  Mortal
//
//  Created by Feng Ye on 5/20/12.
//  Copyright (c) 2012 @forresty. All rights reserved.
//

#import "StatusBarController.h"

@implementation StatusBarController

@synthesize statusItem;
@synthesize lifeProgress;
@synthesize statusMenu;

-(id)init {
  self = [super init];
  if (self) {
    NSMenuItem *menuItem = [[NSMenuItem alloc] initWithTitle:@"Quit" action:@selector(quitApp) keyEquivalent:@"q"];
    [menuItem setTarget:self];

    statusMenu = [[NSMenu alloc] init];
    [statusMenu addItem:menuItem];

    statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    [statusItem setHighlightMode:YES];
    [statusItem setMenu:statusMenu];

    lifeProgress = [[LifeProgress alloc] initWithBirthDate:[NSDate dateWithNaturalLanguageString:@"1986-10-07"]];

    [self updateProgress];

    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval: 10
                                                      target: self
                                                    selector: @selector(updateProgress)
                                                    userInfo: nil
                                                     repeats: YES];
    [timer fire];
  }

  return self;
}

-(void)quitApp {
  exit(0);
}

-(NSString *)currentProgressString {
  return [NSString stringWithFormat:@"%.4f%%, %d days left", [lifeProgress percentageLived], [lifeProgress daysLeft]];
}

-(void)updateProgress {
  NSFont *font = [NSFont fontWithName:@"Lucida Grande" size:13];
  NSDictionary *attrsDictionary =
  [NSDictionary dictionaryWithObject:font
                              forKey:NSFontAttributeName];
  NSAttributedString *title = [[NSAttributedString alloc]
                               initWithString:[self currentProgressString]
                               attributes:attrsDictionary];
  [statusItem setAttributedTitle:title];
}

@end
