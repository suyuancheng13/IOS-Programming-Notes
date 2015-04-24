//
//  MSViewController.m
//  MethodSwizzling
//
//  Created by Suyuancheng on 15-4-23.
//  Copyright (c) 2015年 __MyCompanyName__. All rights reserved.
//

#import "MSViewController.h"

@interface MSViewController ()
//@property(readwrite)NSString *extensionTest;
@end

@implementation MSViewController
@synthesize extensionTest;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    extensionTest = @"test";
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
