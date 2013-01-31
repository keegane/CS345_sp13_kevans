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
    // test fixture ivars go here
}

//- (void)setUp
//{
//    [super setUp];
//    <#set up#>
//}

- (void)testNextReminderIdWithNoCurrentReminderIdInUserDefaultsShouldReturnZero
{
    // given
    NSUserDefaults *mockUserDefaults = mock([NSUserDefaults class]);
    Example *sut = [[Example alloc] initWithUserDefaults:mockUserDefaults];
    [given ([mockUserDefaults objectForKey:@"currentReminderId"]) willReturn:nil];
    // when
    
    // then
    assertThat([sut nextReminderId], is(equalTo(@0)));
}

//- (void)tearDown
//{
//    <#tear down#>
//    [super tearDown];
//}


@end
