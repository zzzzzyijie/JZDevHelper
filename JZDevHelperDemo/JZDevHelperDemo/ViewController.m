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
    
//    NSString *str = @"";
//    if (str.isEmpty) {
//        YJLog(@"空");
//    }
    
    YJLog(@"%@",[JZDeviceTool appBundleName]);
    YJLog(@"%@",[JZDeviceTool appBundleIdentifier]);
    YJLog(@"%@",[JZDeviceTool appVersion]);
    YJLog(@"%@",[JZDeviceTool appBuildVersion]);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    NSMutableArray *mArray = [NSMutableArray arrayWithArray:@[]];
    
    if (mArray.isEmpty) {
        YJLog(@"空 mArray ");
    }
    
    NSMutableDictionary *mDict = [NSMutableDictionary dictionaryWithDictionary:@{}];
    if (mDict.isEmpty) {
        YJLog(@"空 mDict");
    }
}


@end
