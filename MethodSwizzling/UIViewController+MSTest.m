//
//  UIViewController+MSTest.m
//  MethodSwizzling
//
//  Created by Suyuancheng on 15-4-23.
//  Copyright (c) 2015年 __MyCompanyName__. All rights reserved.
//

#import "UIViewController+MSTest.h"
#import <objc/runtime.h>
@implementation UIViewController (logging)
/*一般情况下，类别里的方法会重写掉主类里相同命名的方法。如果有两个类别实现了相同命名的方法，只有一个方法会被调用。但 +load: 是个特例，当一个类被读到内存的时候， runtime 会给这个类及它的每一个类别都发送一个 +load: 消息。
 */
+ (void)load
{
    swizzlingMethod([self class], @selector(viewDidAppear:), @selector(swizzling_viewDidAppear:));
   // NSLog(@"%s",@selector(viewDidAppear:));
}
- (void)swizzling_viewDidAppear:(BOOL)animated
{
    [self swizzling_viewDidAppear:animated];
   
    NSLog(@"log::view did appeared!!!!");
}
void swizzlingMethod(Class class ,SEL orignal, SEL swizziled)
{
    Method origanlMethod =  class_getInstanceMethod(class, orignal);
    Method swizziledMethod = class_getInstanceMethod(class, swizziled);
    BOOL didAddMethod = class_addMethod(class, orignal, method_getImplementation(swizziledMethod), method_getTypeEncoding(swizziledMethod));
    /*
     if not exist then replace the implement 
     */
    if(didAddMethod)
    {
        class_replaceMethod(class, swizziled, method_getImplementation(origanlMethod), method_getTypeEncoding(origanlMethod));
    }
    /*
     is exist then exchange the implement
     */
    else {
        method_exchangeImplementations(origanlMethod, swizziledMethod);
    }
}
@end
