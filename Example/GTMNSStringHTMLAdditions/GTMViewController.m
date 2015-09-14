//
//  GTMViewController.m
//  GTMNSStringHTMLAdditions
//
//  Created by Gregory Jeckell on 09/14/2015.
//  Copyright (c) 2015 Gregory Jeckell. All rights reserved.
//

#import "GTMViewController.h"
@import GTMNSStringHTMLAdditions;

@interface GTMViewController ()
@property (weak, nonatomic) IBOutlet UILabel* lblRawString;
@property (weak, nonatomic) IBOutlet UILabel* lblUnescapedString;
@end

@implementation GTMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString* rawString = @"&quot; &amp; &apos; &lt; &gt; &circ; &tilde;";
    [_lblRawString setText:rawString];
    [_lblUnescapedString setText:[rawString gtm_stringByUnescapingFromHTML]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
