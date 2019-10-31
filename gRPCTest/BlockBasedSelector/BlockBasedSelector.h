//
//  BlockBasedSelector.h
//  gRPCTest
//
//  Created by Trace Tschida on 10/2/19.
//  Copyright © 2019 Trace Tschida. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlockBasedSelector : NSObject

@end

typedef void (^OBJCBlock)(id foo);

void class_addMethodWithBlock(Class class, SEL newSelector, OBJCBlock block);
