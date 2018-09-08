//
//  ViewController.m
//  JZDevHelperDemo
//
//  Created by Zengyijie' Com  on 2018/6/5.
//  Copyright © 2018年 www.noname.com. All rights reserved.
//

#import "ViewController.h"
#import "JZDevHelper.h"
//#import "ColorFontMacro.h"
#import "GernalMacro.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    kDISPATCH_GLOBAL_QUEUE_DEFAULT(^{
        NSLog(@"hhhh");
        kDISPATCH_MAIN_THREAD(^{
            NSLog(@"AAA");
        });
    });
    
    kDISPATCH_AFTER(3, ^{
        NSLog(@"DisBACK");
    });
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
