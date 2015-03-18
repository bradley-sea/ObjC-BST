//
//  BinarySearchTree.h
//  BST
//
//  Created by Bradley Johnson on 3/18/15.
//  Copyright (c) 2015 BPJ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BinarySearchTree : NSObject

-(BOOL)addValue:(NSInteger)value;

-(BOOL)findValue:(NSInteger)value;

-(void)removeValue:(NSInteger)value;

@end
