//
//  LifeProgress.m
//  Mortal
//
//  Created by Feng Ye on 5/20/12.
//  Copyright (c) 2012 @forresty. All rights reserved.
//

#import "LifeProgress.h"


@implementation LifeProgress


#define SECONDS_PER_HOUR (60 * 60)
#define SECONDS_PER_DAY (24 * SECONDS_PER_HOUR)


- (id)initWithBirthDate:(NSDate *)birthDate {
  return [self initWithBirthDate:birthDate expectedYearsToLive:30];
}


- (id)initWithBirthDate:(NSDate *)birthDate expectedYearsToLive:(int)years {
  self = [super init];
  if (self) {
    _birthTime = [birthDate timeIntervalSince1970];
    _expectedYearsToLive = years;
  }

  return self;
}


# pragma mark
# pragma mark - properties


- (int)expectedLifeSpanInDays {
  return 365 * self.expectedYearsToLive;
}


- (int)expectedLifeSpanInHours {
  return self.expectedLifeSpanInDays * 24;
}


- (int)secondsLived {
  return [[NSDate date] timeIntervalSince1970] - self.birthTime;
}


- (int)hoursLived {
  return (int)(self.secondsLived / SECONDS_PER_HOUR);
}


- (int)daysLived {
  return (int)(self.secondsLived / SECONDS_PER_DAY);
}


- (double)percentageLived {
  return self.secondsLived * 100.0 / SECONDS_PER_DAY / self.expectedLifeSpanInDays;
}


- (int)daysLeft {
  return self.expectedLifeSpanInDays - self.daysLived;
}


- (int)hoursLeft {
  return self.expectedLifeSpanInHours - self.hoursLived;
}


@end
