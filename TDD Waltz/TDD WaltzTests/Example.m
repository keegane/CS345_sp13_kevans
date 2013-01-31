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
    NSNumber *reminderId = [_userDefaults objectForKey: @"currentReminderId"];
    if (reminderId)
        return @([reminderId integerValue] + 1);
    [_userDefaults setObject:@0 forKey:@"currentReminderId"];
    return @0;
}

@end
