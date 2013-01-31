/**
 @file Example.m
 */

#import "Example.h"

@implementation Example

- (id)initWithUserDefaults:(NSUserDefaults *)userDefaults
{
    self = [super init];
    return self;
}

- (NSNumber *)nextReminderId
{
    return @-1;
}

@end
