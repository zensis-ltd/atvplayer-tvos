//
//  ViewController.m
//  ATVPlayer-Demo
//
//  Created by vincent on 6/1/2017.
//  Copyright © 2017 ATVPlayer. All rights reserved.
//

#import "ViewController.h"
#import "ObjcViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)didClickObjBtn:(id)sender{
    [self.navigationController pushViewController:[ObjcViewController new] animated:YES];
}

-(IBAction)didClickSwiftBtn:(id)sender{
    
}

@end
