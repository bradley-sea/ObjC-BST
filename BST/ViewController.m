//
//  ViewController.m
//  BST
//
//  Created by Bradley Johnson on 3/18/15.
//  Copyright (c) 2015 BPJ. All rights reserved.
//

#import "ViewController.h"
#import "BinarySearchTree.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  BinarySearchTree *BST = [[BinarySearchTree alloc] init];
  
  [BST addValue:9];
  [BST addValue:3];
  [BST addValue:12];
  [BST addValue:6];
  [BST addValue:19];
  [BST addValue:2];
  [BST addValue:7];
  [BST addValue:11];
  [BST addValue:20];
  [BST addValue:17];
  
  BOOL found = [BST findValue:11];
  
  [BST removeValue:3];
  
  NSLog(@"%@",found);
  
  // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
