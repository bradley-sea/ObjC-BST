//
//  Node.m
//  BST
//
//  Created by Bradley Johnson on 3/18/15.
//  Copyright (c) 2015 BPJ. All rights reserved.
//

#import "Node.h"

@implementation Node

-(BOOL)addValue:(NSInteger)value {
  if (self.value == value) {
    return false;
  } else if (self.value > value) { //value is less than this current nodes value, so look left
    
    if (self.left == nil) {
      Node *node = [[Node alloc] init];
      node.value = value;
      self.left = node;
      return true;
    } else {
      return [self.left addValue:value];
    }
  } else { //value is greater than this current nodes value, so look right
    if (self.right == nil) {
      Node *node = [[Node alloc] init];
      node.value = value;
      self.right = node;
      return true;
      
    } else {
      return [self.right addValue:value];
    }
  }
}

-(BOOL)findValue:(NSInteger)value {
  if (self.value == value) {
    return true;
  } else if (self.value > value) {
    if (self.left == nil) {
      return false;
    } else {
      return [self.left findValue:value];
    }
  } else {
    if (self.right == nil ) {
      return false;
    } else {
      return [self.right findValue:value];
    }
  }
}

-(void)removeValue:(NSInteger)value parentNode:(Node *)parent {
  
  //recursively find the node to remove
  if (self.value < value) {
    [self.right removeValue:value parentNode:self];
    return;
  } else if (self.value > value) {
    [self.left removeValue:value parentNode:self];
    return;
  }
  //found it:
  if (self.value == value) {
  //if we have no children, just remove ourself from the tree
  if (self.left == nil && self.right == nil) {
    if (parent.value < value) {
      parent.right = nil;
    } else {
      parent.left = nil;
    }
  } else if (self.left !=nil && self.right == nil){
    //if we have one left child, replace us with that left child
    //but need to figure out which side of the parent we are on
    if (self.value > parent.value) {
      parent.right = self.left;
    } else {
      parent.left = self.left;
    }
  } else if (self.left == nil && self.right != nil ) {
    if (self.value > parent.value) {
      parent.right = self.right;
    } else {
      parent.left = self.right;
    }
  }
  else {
    Node *replacementNode = [self findMinmumNodeInRightTree];
    
    if (self.value < parent.value) {
      replacementNode.left = self.left;
      replacementNode.right = self.right;
      parent.left = replacementNode;
    } else {
      replacementNode.left = self.left;
      replacementNode.right = self.right;
      parent.right = replacementNode;
    }
  }
  }
  
}

-(Node *)findMinmumNodeInRightTree {
  
  Node *currentNode = self.right;
  Node *parentNode = self;
  
  while (currentNode.left != nil) {
    parentNode = currentNode;
    currentNode = currentNode.left;
  }
  
  if (currentNode.value < parentNode.value) {
    parentNode.left = nil;
  } else {
    parentNode.right = nil;
  }
  
  if (currentNode.right != nil) {
    parentNode.right = currentNode.right;
  }
  
  return currentNode;
}

@end
