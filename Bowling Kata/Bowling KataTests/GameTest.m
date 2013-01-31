/**
 @file GameTest.m
*/

    // Class under test
#import "Game.h"

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
 @brief For testing <#GameTest#>
 */
@interface GameTest : SenTestCase
@end

@implementation GameTest
{
    Game *game;
}

- (void)setUp
{
    [super setUp];
    game = [[Game alloc] init];

}

- (void)tearDown
{
    game = nil;
    [super tearDown];
    
}

- (void)testGutterGame
{
    for (int i= 0; i < 20; ++i)
        [game rollWithPinCount:0];
    STAssertEquals([game score], 0,nil);
}

- (void)testAllOnes
{
    for (int i= 0; i < 20; ++i)
        [game rollWithPinCount:1];
    STAssertEquals([game score], 20,nil);
}


@end
