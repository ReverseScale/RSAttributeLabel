//
//  ViewController.m
//  RSAttributeLabel
//
//  Created by WhatsXie on 2017/8/18.
//  Copyright © 2017年 StevenXie. All rights reserved.
//

#import "ViewController.h"
#import "RSAttributeLabel.h"

#define K_ScreenWidth     [[UIScreen mainScreen]bounds].size.width
#define K_ScreenHeight    [[UIScreen mainScreen]bounds].size.height

#define    ALERT_VIEW(Title, Message, LeftTitle, LeftBlock, RightTitle, RightBlock)\
UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:Title message:Message preferredStyle:UIAlertControllerStyleAlert];\
if ([LeftTitle length] > 0) {\
if(LeftBlock != nil){\
UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:LeftTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {\
if(LeftBlock){\
LeftBlock();\
}\
}];\
[cancelAction setValue:[UIColor grayColor] forKey:@"_titleTextColor"];\
[alertVC addAction:cancelAction];\
}\
}\
if ([RightTitle length] > 0) {\
if(RightBlock != nil){\
UIAlertAction *doneAction = [UIAlertAction actionWithTitle:RightTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {\
if(RightBlock){\
RightBlock();\
}\
}];\
[doneAction setValue:[UIColor orangeColor] forKey:@"_titleTextColor"];\
[alertVC addAction:doneAction];\
}\
}\
[[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alertVC animated:YES completion:nil];

@interface ViewController ()
@property (weak, nonatomic) IBOutlet RSAttributeLabel *arrtributeLabelXib;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self testAttributeLabel01];
    [self testAttributeLabelXIB];
}

- (void)testAttributeLabel01 {
    /*设置高亮可点击文字*/
    RSAttributeLabel *label0 = [[RSAttributeLabel alloc]initWithFrame:CGRectMake(16, 150, K_ScreenWidth - 16 * 2, 100)];
    label0.text = @"1、这是一个<富文本label>，当你点击红色的文字的时候，你会看到一个弹框，当你点击确定按钮时候，会在控制台输出你所点击的<文字>,如果你想展示\\<\\>,那么需要在‘\\<’和‘\\>’前加两个'\\'进行转义。";
    label0.font = [UIFont systemFontOfSize:20];
    label0.textColor = [UIColor blackColor];
    
    label0.highlightFont = [UIFont systemFontOfSize:22];
    label0.highlightColor = [UIColor redColor];
    label0.HighlightAction = ^(NSString *highlightText){
        ALERT_VIEW(@"您点击了高亮文字",highlightText, @"取消", ^{}, @"确定", ^{
            NSLog(@"highlightText:%@",highlightText);
        });
    };
    [self.view addSubview:label0];
}

- (void)testAttributeLabelXIB {
    /*设置图片和文字*/
    self.arrtributeLabelXib.text = @"2、这是一个<图文混排的label>，你会看到这里面有一个链接图片[lianjie.png]和微信图片[weixin.png]和一些<高亮文字>，当你点击高亮文字的时候，会有响应事件，其中这里的图片需要使用图片名称,可以到demo中查看";
    self.arrtributeLabelXib.font = [UIFont systemFontOfSize:12];
    self.arrtributeLabelXib.textColor = [UIColor blackColor];
    self.arrtributeLabelXib.highlightColor = [UIColor redColor];
    self.arrtributeLabelXib.highlightFont = [UIFont systemFontOfSize:14];
    self.arrtributeLabelXib.HighlightAction = ^(NSString *highlightText){
        ALERT_VIEW(@"您点击了高亮文字",highlightText, @"取消", ^{}, @"确定", ^{
            NSLog(@"highlightText:%@",highlightText);
        });
    };
    [self.view addSubview:self.arrtributeLabelXib];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
