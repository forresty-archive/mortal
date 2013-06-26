//
//  Mortal_Test.m
//  Mortal Test
//
//  Created by Forrest Ye on 6/26/13.
//  Copyright (c) 2013 @forresty. All rights reserved.
//

#import "Mortal_Test.h"
#import "LifeProgress.h"

@implementation Mortal_Test {
  LifeProgress *__lifeProgress;
}


- (void)setUp {
  [super setUp];

  __lifeProgress = [[LifeProgress alloc] initWithBirthDate:[NSDate date] expectedYearsToLive:1];
}


- (void)tearDown {
  [super tearDown];
}


- (void)testDaysLeft {
  STAssertEquals([__lifeProgress daysLeft], 365, @"should have 365 days left to live");
}


- (void)testPercentageLived {
  STAssertEqualsWithAccuracy([__lifeProgress percentageLived], 0.0, 0.001, @"should have not lived");
}


@end
