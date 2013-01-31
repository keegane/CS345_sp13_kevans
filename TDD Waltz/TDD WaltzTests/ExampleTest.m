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
    [given ([mockUserDefaults objectForKey:@"currentReminderId"]) willReturn:nil];
}

- (void)testNextReminderIdWithNoCurrentReminderIdInUserDefaultsShouldReturnZero
{

    assertThat([sut nextReminderId], is(equalTo(@0)));
}

- (void)testNextReminderIdWithNoCurrentReminderIdInUserDefaultsSgouldSaveZeroInIUserDefaults
{
    // when
    [sut nextReminderId];
    
    // then
    [verify(mockUserDefaults) setObject:@0 forKey: @"currentReminderId"];
}

- (void)testNextReminderIdWithCurrentReminderIdInUserDefaultsShouldReturnOneGreater
{
    [given ([mockUserDefaults objectForKey:@"currentReminderId"]) willReturn:@3];
    
    assertThat([sut nextReminderId], is(equalTo(@4)));
}


- (void)tearDown
{
    sut = nil;
    [super tearDown];
}


@end
