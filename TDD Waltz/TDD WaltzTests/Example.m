/**
 @file Example.m
 */

#import "Example.h"

@implementation Example
{
    NSUserDefaults *_userDefaults;
}

- (id)initWithUserDefaults:(NSUserDefaults *)userDefaults
{
    self = [super init];
    if (self)
        _userDefaults = userDefaults;
    return self;
    
}

- (NSNumber *)nextReminderId
{
    [_userDefaults setObject:@0 forKey:@"currentReminderId"];
    return @0;
}

@end
