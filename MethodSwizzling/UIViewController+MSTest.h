//
//  UIViewController+MSTest.h
//  MethodSwizzling
//
//  Created by Suyuancheng on 15-4-23.
//  Copyright (c) 2015年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UIViewController (logging)
- (void)swizzling_viewDidAppear:(BOOL)animated;

@end
