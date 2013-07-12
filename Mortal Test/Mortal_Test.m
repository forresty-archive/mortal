//
//  Mortal_Test.m
//  Mortal Test
//
//  Created by Forrest Ye on 6/26/13.
//  Copyright (c) 2013 @forresty. All rights reserved.
//

#import "Mortal_Test.h"
#import "LifeProgress.h"
#import "Kiwi.h"

@implementation Mortal_Test {
  LifeProgress *__lifeProgress;
  NSDate *__now;
}


- (void)setUp {
  [super setUp];

  __now = [NSDate date];
  __lifeProgress = [[LifeProgress alloc] initWithBirthDate:__now expectedYearsToLive:1];
}


- (void)tearDown {
  [super tearDown];
}


- (void)testDaysLeft {
  STAssertEquals([__lifeProgress daysLeft], 365, @"should have 365 days left to live");
}


- (void)testHoursLeft {
  STAssertEquals([__lifeProgress hoursLeft], 365 * 24, @"should have 365 * 24 hours left to live");
}


- (void)testPercentageLived {
  STAssertEqualsWithAccuracy([__lifeProgress percentageLived], 0.0, 0.001, @"should have not lived");
}


@end
