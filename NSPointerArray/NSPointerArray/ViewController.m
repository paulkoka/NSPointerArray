//
//  ViewController.m
//  NSPointerArray
//
//  Created by paul on 4/14/18.
//  Copyright © 2018 Paul. All rights reserved.
//

#import "ViewController.h"
#import "KPIobject.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self doTaskNSPointerArray];
   
}

-(void) doTaskNSPointerArray{
    //Please, find your tasks on NSPointerArray bellow:
    
    //    Create pointer array and add 10 objects inside.
    NSPointerArray* pointerArayForTask = [NSPointerArray weakObjectsPointerArray];
    
    for (int i = 0; i < 10; i++) {
        KPIobject *myObject = [[[KPIobject alloc] init] autorelease];
        [pointerArayForTask addPointer: myObject];
    }
    
    //    Check arrays count.
    
    NSLog(@"PointerArray count - %ld", pointerArayForTask.count);
    
    //    Nil several objects, added to the array and check count once again.
    
    [pointerArayForTask replacePointerAtIndex:3 withPointer:nil];
    [pointerArayForTask replacePointerAtIndex:6 withPointer:nil];
    
    NSLog(@"PointerArray count after nilling of some objects - %ld", pointerArayForTask.count);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
