//
//  Node.h
//  BST
//
//  Created by Bradley Johnson on 3/18/15.
//  Copyright (c) 2015 BPJ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

@property (nonatomic) NSInteger value;
@property (strong,nonatomic) Node *left;
@property (strong,nonatomic) Node *right;

-(BOOL)addValue:(NSInteger)value;
-(BOOL)findValue:(NSInteger)value;
-(void)removeValue:(NSInteger)value parentNode:(Node *)parent;

@end
