//
//  LifeProgress.h
//  Mortal
//
//  Created by Feng Ye on 5/20/12.
//  Copyright (c) 2012 @forresty. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface LifeProgress : NSObject

@property int birthTime;

-(id)initWithBirthDate:(NSDate *)birthDate;

-(NSString *)currentProgressString;

@end
