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
        reminderId = @([reminderId integerValue] + 1);
    else
        reminderId = @0;
    [_userDefaults setObject:reminderId forKey:@"currentReminderId"];
    return reminderId;
}

@end
