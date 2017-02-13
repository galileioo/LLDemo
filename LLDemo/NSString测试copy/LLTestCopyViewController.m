//
//  LLTestCopyViewController.m
//  LLDemo
//
//  Created by galileio on 2016/12/21.
//  Copyright © 2016年 ctw. All rights reserved.
//

#import "LLTestCopyViewController.h"
#import "LLPerson.h"
@interface LLTestCopyViewController ()

@end

@implementation LLTestCopyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    LLPerson * person = [LLPerson new];
    NSString * name = @"galileio";
    person.nameStrong = name;
    person.nameCopy = name;
    NSMutableString * mLogStr = [NSMutableString string];
    NSString * logStr = [NSString stringWithFormat:@"mame : %p,nameStrong : %p,nameCopy : %p\n", name, person.nameStrong, person.nameCopy];
    [mLogStr appendString:logStr];
    NSLog(@"%@", logStr);
    
    
    
    LLPerson * person1 = [LLPerson new];
    NSMutableString * mName = [NSMutableString stringWithFormat:@"galileio"];
    person1.nameStrong = mName;
    person1.nameCopy = mName;
   
     logStr = [NSString stringWithFormat:@"origin : %p,strong : %p,copy : %p\n", mName, person1.nameStrong, person1.nameCopy];
    [mLogStr appendString:logStr];
    
    NSLog(@"%@", logStr);
    logStr = [NSString stringWithFormat:@"%@--%@--%@\n",mName,person1.nameCopy,person1.nameStrong];
    [mLogStr appendString:logStr];
    NSLog(@"%@", logStr);
    mName.string = @"lilei";
    logStr = [NSString stringWithFormat:@"%@--%@--%@\n",mName,person1.nameCopy,person1.nameStrong];
    [mLogStr appendString:logStr];
     NSLog(@"%@", logStr);
    logStr = [NSString stringWithFormat:@"origin : %p,strong : %p,copy : %p\n", mName, person1.nameStrong, person1.nameCopy];
    [mLogStr appendString:logStr];
     NSLog(@"%@", logStr);
    _logLabel.text = mLogStr;

    //从上面的例子中可以看出来，nameStrong的值在这种情况下会被改掉。
}

@end
