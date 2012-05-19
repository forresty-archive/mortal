//
//  MenubarController.h
//  Mortal
//
//  Created by Feng Ye on 5/20/12.
//  Copyright (c) 2012 @forresty. All rights reserved.
//

#import <CoreData/CoreData.h>

#import "LifeProgress.h"

@interface MenubarController : NSObject

@property NSStatusItem *statusItem;
@property LifeProgress *lifeProgress;

@end
