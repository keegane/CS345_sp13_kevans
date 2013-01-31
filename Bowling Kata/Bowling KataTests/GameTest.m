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

-(void)rollPins:(int)pins times:(int)n{
    for (int i= 0; i < n; ++i)
        [game rollWithPinCount:pins];
}

- (void)testGutterGame
{
    [self rollPins:0 times:20];
    STAssertEquals([game score], 0,nil);
}

- (void)testAllOnes
{
    [self rollPins:1 times:20];
    STAssertEquals([game score], 20,nil);
}
- (void)rollSpare
{
    [game rollWithPinCount:5];
    [game rollWithPinCount:5];
}
- (void)testOneSpare
{
    [self rollSpare];
    [game rollWithPinCount:3];
    [self rollPins:0 times:17];
    STAssertEquals([game score], 16,nil);
}


@end
