/**
 @file Example.m
 */

#import "Example.h"

static NSString *const currentReminderIdKey = @"currentReminderId";

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

- (NSNumber *)determineNextReminderIdFromUserDefaults
{
    NSNumber *reminderId = [_userDefaults objectForKey: currentReminderIdKey];
    if (reminderId)
        return @([reminderId integerValue] + 1);
    else
        return @0;
}

- (NSNumber *)nextReminderId
{
    NSNumber *reminderId = [self determineNextReminderIdFromUserDefaults];
    [_userDefaults setObject:reminderId forKey:currentReminderIdKey];
    return reminderId;
}

@end
