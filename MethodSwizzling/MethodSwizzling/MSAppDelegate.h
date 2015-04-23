//
//  MSAppDelegate.h
//  MethodSwizzling
//
//  Created by Suyuancheng on 15-4-23.
//  Copyright (c) 2015年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MSViewController;

@interface MSAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) MSViewController *viewController;

@end
