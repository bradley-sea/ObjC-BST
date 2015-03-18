//
//  BinarySearchTree.m
//  BST
//
//  Created by Bradley Johnson on 3/18/15.
//  Copyright (c) 2015 BPJ. All rights reserved.
//

#import "BinarySearchTree.h"
#import "Node.h"

@interface BinarySearchTree ()

@property (strong,nonatomic) Node *head;

@end

@implementation BinarySearchTree


-(BOOL)addValue:(NSInteger)value {
  if (self.head == nil) {
    Node *node = [[Node alloc] init];
    node.value = value;
    self.head = node;
    return true;
  } else if (self.head.value == value) {
      return false;
  } else {
    return [self.head addValue:value];
  }
}

-(BOOL)findValue:(NSInteger)value {
  if (self.head == nil) {
    return false;
  } else {
    return [self.head findValue:value];
  }
}

-(void)removeValue:(NSInteger)value {
  
  if (self.head != nil) {
    [self.head removeValue:value parentNode:nil];
  }
  
}



@end
