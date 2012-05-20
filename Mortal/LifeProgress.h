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
@property int expectedYearsToLive;

-(id)initWithBirthDate:(NSDate *)birthDate;
-(id)initWithBirthDate:(NSDate *)birthDate expectedYearsToLive:(int)years;

-(int)daysLeft;
-(double)percentageLived;

@end
