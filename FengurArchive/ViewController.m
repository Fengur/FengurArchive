//
//  ViewController.m
//  FengurArchive
//
//  Created by 王智超 on 15/11/5.
//  Copyright © 2015年 UWFengur. All rights reserved.
//

//获取设备的物理高度
#define ScreenHeight [UIScreen mainScreen].bounds.size.height
//获取设备的物理宽度
#define ScreenWidth [UIScreen mainScreen].bounds.size.width

#import "ViewController.h"
#import "Person.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    Person *person1 = [[Person alloc]init];
    person1.sex = @"男";
    person1.name = @"一头喷火大怪龙";
    person1.hobby = @"读书、看报、吃饭、睡觉";
    [Person savePerson:person1];
    
    //person1 和 person2 并没有直接的赋值关系，而且person类没有手动的归档和解档
    //但是此时归档和接档都已经可以正常操作
    
    Person *person2 = [[Person alloc]init];
    person2 = [Person getPerson];
    [self setLabelWithPerson:person2];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)setLabelWithPerson:(Person *)person
{
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(10, 0, ScreenWidth-20, ScreenHeight)];
    label.numberOfLines = 0;
    label.textAlignment = NSTextAlignmentJustified;
    label.text = [NSString stringWithFormat:@"\n性别:\r%@\n姓名:\r%@\n爱好:\r%@\n\n\n\n欢迎关注我的github\nhttps://github.com/Fengur\n使用中有问题,请联系QQ:475739631",person.sex,person.name,person.hobby];
    label.font = [UIFont systemFontOfSize:15.f];
    label.textColor = [UIColor whiteColor];
    label.backgroundColor = [UIColor brownColor];
    self.view.backgroundColor = label.backgroundColor;
    [self.view addSubview:label];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
