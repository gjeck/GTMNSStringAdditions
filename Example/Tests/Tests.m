//
//  GTMNSStringHTMLAdditionsTests.m
//  GTMNSStringHTMLAdditionsTests
//
//  Created by Gregory Jeckell on 09/14/2015.
//  Copyright (c) 2015 Gregory Jeckell. All rights reserved.
//

@import XCTest;
@import GTMNSStringHTMLAdditions;

@interface Tests : XCTestCase
+ (NSString*)unescapeNoFrameworksAppleCode:(NSString*)str;
@end

@implementation Tests

- (void)testGtm_stringByEscapingForHTML {
    NSString* rawString = @"\" & ' < > ˆ ˜";
    NSString* expectedString = @"&quot; &amp; &apos; &lt; &gt; &circ; &tilde;";
    NSString* escapedString = [rawString gtm_stringByEscapingForHTML];
    XCTAssertEqualObjects(escapedString, expectedString);
}

- (void)testGtm_stringByUnescapingFromHTML {
    NSString* rawString = @"&quot; &amp; &apos; &lt; &gt; &circ; &tilde;";
    NSString* expectedString = @"\" & ' < > ˆ ˜";
    NSString* unescapedString = [rawString gtm_stringByUnescapingFromHTML];
    XCTAssertEqualObjects(unescapedString, expectedString);
}

- (void)testUnescapeNoFrameworksAppleCode {
    NSString* rawString = @"&quot; &amp; &apos; &lt; &gt; &circ; &tilde;";
    NSString* expectedString = @"\" & ' < > ˆ ˜";
    NSString* unescapedString = [Tests unescapeNoFrameworksAppleCode:rawString];
    XCTAssertEqualObjects(unescapedString, expectedString);
}

- (void)testPerformanceGtm_stringByUnescapingFromHTML {
    NSString* rawString = @"<div id='hook_quote' class='quote item'>"
    "<p>"
    "<a href='/hook'><span class='character'>Captain James Hook</span></a>:"
    "<em> to Peter as he traps him and grinds his hook near his face</em>"
    "You know you&apos;re not really Peter Pan, don&apos;t you? This is only a dream. When "
    "you wake up, you&apos;ll just be Peter Banning - a cold, selfish man who drinks too "
    "much, is obsessed with success, and runs &amp; hides from his wife &amp; children! "
    "</p>"
    "</div>";
    [self measureBlock:^{
        [rawString gtm_stringByUnescapingFromHTML];
    }];
}

- (void)testPerformanceUnescapeNoFrameworksAppleCode {
    NSString* rawString = @"<div id='hook_quote' class='quote item'>"
    "<p>"
    "<a href='/hook'><span class='character'>Captain James Hook</span></a>:"
    "<em> to Peter as he traps him and grinds his hook near his face</em>"
    "You know you&apos;re not really Peter Pan, don&apos;t you? This is only a dream. When "
    "you wake up, you&apos;ll just be Peter Banning - a cold, selfish man who drinks too "
    "much, is obsessed with success, and runs &amp; hides from his wife &amp; children! "
    "</p>"
    "</div>";
    [self measureBlock:^{
        [Tests unescapeNoFrameworksAppleCode:rawString];
    }];
}

+ (NSString*)unescapeNoFrameworksAppleCode:(NSString*)str {
    NSData* strData = [str dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary* attributedOptions = @{
                                        NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType
                                        };
    NSError* err;
    NSAttributedString* attributedString = [[NSAttributedString alloc] initWithData:strData
                                                                            options:attributedOptions
                                                                 documentAttributes:nil
                                                                              error:&err];
    if (err) { NSLog(@"%@", err.localizedDescription); }
    
    return attributedString.string;
}


@end

