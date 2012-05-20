//
//  MenubarController.m
//  Mortal
//
//  Created by Feng Ye on 5/20/12.
//  Copyright (c) 2012 @forresty. All rights reserved.
//

#import "MenubarController.h"

@implementation MenubarController

@synthesize statusItem;
@synthesize lifeProgress;

-(id)init {
  self = [super init];
  if (self) {
    statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    lifeProgress = [[LifeProgress alloc] initWithBirthDate:[NSDate dateWithNaturalLanguageString:@"1986-10-07"]];

    [self updateProgress];

    // updates every hour
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval: 10
                                                      target: self
                                                    selector: @selector(updateProgress)
                                                    userInfo: nil
                                                     repeats: YES];
    [timer fire];
  }

  return self;
}

-(void)updateProgress {
  NSFont *font = [NSFont fontWithName:@"Lucida Grande" size:13];
  NSDictionary *attrsDictionary =
  [NSDictionary dictionaryWithObject:font
                              forKey:NSFontAttributeName];
  NSAttributedString *title = [[NSAttributedString alloc]
                               initWithString:[lifeProgress currentProgressString]
                               attributes:attrsDictionary];
  [statusItem setAttributedTitle:title];
}

@end
