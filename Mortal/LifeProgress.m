//
//  LifeProgress.m
//  Mortal
//
//  Created by Feng Ye on 5/20/12.
//  Copyright (c) 2012 @forresty. All rights reserved.
//

#import "LifeProgress.h"

@implementation LifeProgress

@synthesize birthTime;
@synthesize expectedYearsToLive;

#define SECONDS_PER_DAY (24*60*60)

-(id)initWithBirthDate:(NSDate *)birthDate {
  return [self initWithBirthDate:birthDate expectedYearsToLive:30];
}

-(id)initWithBirthDate:(NSDate *)birthDate expectedYearsToLive:(int)years {
  self = [super init];
  if (self) {
    birthTime = [birthDate timeIntervalSince1970];
    expectedYearsToLive = years;
  }

  return self;
}

-(int)expectedLifeSpanInDays {
  return 365 * [self expectedYearsToLive];
}

-(int)secondsLived {
  return [[NSDate date] timeIntervalSince1970] - birthTime;
}

-(int)daysLived {
  return (int)([self secondsLived] / SECONDS_PER_DAY);
}

-(double)percentageLived {
  return [self secondsLived] * 100.0 / SECONDS_PER_DAY / [self expectedLifeSpanInDays];
}

-(int)daysLeft {
  return [self expectedLifeSpanInDays] - [self daysLived];
}

@end
