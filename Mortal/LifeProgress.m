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

#define SECONDS_PER_DAY (24*60*60)
#define EXPECTED_LIFE_SPAN_IN_DAYS (60*365)

-(id)initWithBirthDate:(NSDate *)birthDate {
  self = [super init];
  if (self) {
    birthTime = [birthDate timeIntervalSince1970];
  }

  return self;
}

-(int)secondsLived {
  return [[NSDate date] timeIntervalSince1970] - birthTime;
}

-(int)daysLived {
  return (int)([self secondsLived] / SECONDS_PER_DAY);
}

-(double)progress {
  return [self secondsLived] * 100.0 / SECONDS_PER_DAY / EXPECTED_LIFE_SPAN_IN_DAYS;
}

-(int)daysLeft {
  return EXPECTED_LIFE_SPAN_IN_DAYS - [self daysLived];
}

-(NSString *)currentProgressString {
  return [NSString stringWithFormat:@"%.4f%%, %d days left", [self progress], [self daysLeft]];
}

@end
