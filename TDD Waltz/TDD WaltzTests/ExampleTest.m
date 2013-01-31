/**
 @file ExampleTest(Repeat 1).m
*/

    // Class under test
#import "Example.h"

    // Collaborators

    // Test support
#import <SenTestingKit/SenTestingKit.h>

// Comment the next two lines to disable OCHamcrest (for test assertions)
#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>

// Comment the next two lines to disable OCMockito (for mock objects)
#define MOCKITO_SHORTHAND
#import <OCMockito/OCMockito.h>

/**
 @brief For testing <#ExampleTest#>
 */
@interface ExampleTest : SenTestCase
@end

@implementation ExampleTest
{
    NSUserDefaults *mockUserDefaults;
    Example *sut;
}

- (void)setUp
{
    [super setUp];
    mockUserDefaults = mock([NSUserDefaults class]);
    sut = [[Example alloc] initWithUserDefaults:mockUserDefaults];
}

- (void)setUpUserDefaultsWithCurrentReminderId:(NSNumber *)current
{
    [given ([mockUserDefaults objectForKey:@"currentReminderId"]) willReturn:current];
}

- (void)testNextReminderIdWithNoCurrentReminderIdInUserDefaultsShouldReturnZero
{
    //given
    [self setUpUserDefaultsWithCurrentReminderId:nil];
    //then
    assertThat([sut nextReminderId], is(equalTo(@0)));
}

- (void)testNextReminderIdWithNoCurrentReminderIdInUserDefaultsShouldSaveZeroInIUserDefaults
{
    //given
    [self setUpUserDefaultsWithCurrentReminderId:nil];
    // when
    [sut nextReminderId];
    
    // then
    [verify(mockUserDefaults) setObject:@0 forKey: @"currentReminderId"];
}

- (void)testNextReminderIdWithCurrentReminderIdInUserDefaultsShouldReturnOneGreater
{
    //given
    [self setUpUserDefaultsWithCurrentReminderId:@3];
    //then
    assertThat([sut nextReminderId], is(equalTo(@4)));
}

- (void)testNextReminderIdWithCurrentReminderIdInUserDefaultsShouldSaveOneGreaterInIUserDefaults
{
    //given
  [self setUpUserDefaultsWithCurrentReminderId:@3];
    // when
  [sut nextReminderId];
    
    // then
  [verify(mockUserDefaults) setObject:@4 forKey: @"currentReminderId"];
}

- (void)tearDown
{
    sut = nil;
    [super tearDown];
}


@end
