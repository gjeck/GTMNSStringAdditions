# GTMNSStringHTMLAdditions

[![CI Status](http://img.shields.io/travis/gjeck/GTMNSStringAdditions.svg?style=flat)](https://travis-ci.org/gjeck/GTMNSStringAdditions)
[![Version](https://img.shields.io/cocoapods/v/GTMNSStringHTMLAdditions.svg?style=flat)](http://cocoadocs.org/docsets/GTMNSStringHTMLAdditions)
[![License](https://img.shields.io/cocoapods/l/GTMNSStringHTMLAdditions.svg?style=flat)](http://cocoadocs.org/docsets/GTMNSStringHTMLAdditions)
[![Platform](https://img.shields.io/cocoapods/p/GTMNSStringHTMLAdditions.svg?style=flat)](http://cocoadocs.org/docsets/GTMNSStringHTMLAdditions)

Google Toolbox for Mac string categories

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

To use in a project just import/include the package and get started as follows:

####Objective-C
```objective-c
NSString* raw_html_string = @"Here&apos;s a raw html string you&apos;ll want to escape. 10 &gt; 4 &amp;&amp; 6 &lt; 8.";
NSString* unescaped_string = [raw_html_string gtm_stringByUnescapingFromHTML];
NSLog(@"%@", unescaped_string); // Here's a raw html string you'll want to escape. 10 > 4 && 6 < 8.
```

####Swift
```swift
let raw_html_string = "Here&apos;s a raw html string you&apos;ll want to escape. 10 &gt; 4 &amp;&amp; 6 &lt; 8."
let unescaped_string = raw_html_string.gtm_stringByUnescapingFromHTML()
println(unescaped_string) // Here's a raw html string you'll want to escape. 10 > 4 && 6 < 8.
```

## Installation

GTMNSStringHTMLAdditions is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "GTMNSStringHTMLAdditions"
```

## Author

[Google](https://code.google.com/p/google-toolbox-for-mac/)

## License

GTMNSStringHTMLAdditions is available under the Apache license. See the LICENSE file for more info.
