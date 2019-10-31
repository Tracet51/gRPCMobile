//
//  BlockBasedSelector.m
//  gRPCTest
//
//  Created by Trace Tschida on 10/2/19.
//  Copyright © 2019 Trace Tschida. All rights reserved.
//

#import "BlockBasedSelector.h"
#import <objc/runtime.h>

@implementation BlockBasedSelector
@end

void class_addMethodWithBlock(Class class, SEL newSelector, OBJCBlock block)
{
    IMP newImplementation = imp_implementationWithBlock(block);
    Method method = class_getInstanceMethod(class, newSelector);
    class_addMethod(class, newSelector, newImplementation,  method_getTypeEncoding(method));
}
