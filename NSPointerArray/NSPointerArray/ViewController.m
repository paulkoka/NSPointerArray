//
//  ViewController.m
//  NSPointerArray
//
//  Created by paul on 4/14/18.
//  Copyright © 2018 Paul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
#pragma mark NSPointerArray
    NSAutoreleasePool *pool3 = [[NSAutoreleasePool alloc] init] ;
    //Please, find your tasks on NSPointerArray bellow:
    
    //    Create pointer array and add 10 objects inside.
    NSPointerArray* pointerArayForTask = [NSPointerArray weakObjectsPointerArray];
    
    for (int i=0; i<10; i++) {
        [pointerArayForTask addPointer:[[[NSArray alloc] init] autorelease]];
    }
  
    
    //    Check arrays count.
    
    NSLog(@"Pointer array Count = %ld", pointerArayForTask.count);
    
    //    Nil several objects, added to the array and check count once again.
    
    [pointerArayForTask replacePointerAtIndex:3 withPointer:nil];
    [pointerArayForTask replacePointerAtIndex:6 withPointer:nil];
    
    NSLog(@"Pointer array after nilling of some objects Count = %ld", pointerArayForTask.count);
    [pool3 release];

    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
