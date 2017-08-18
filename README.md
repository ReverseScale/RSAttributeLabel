# RSAttributeLabel
功能简单，使用更简单的富文本封装
![](https://img.shields.io/badge/platform-iOS-red.svg) 
![](https://img.shields.io/badge/language-Objective--C-orange.svg) 
![](https://img.shields.io/badge/download-791K-brightgreen.svg)
![](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg) 

之前见到的一些富文本库大都使用颇为繁琐，虽然有些配合 H5 代码已经可以翻天覆地，但是大多数时候，我们真正需要的功能其实并不多。

| 名称 |1.列表页 |2.展示页 |
| ------------- | ------------- | ------------- |
| 截图 | ![](http://og1yl0w9z.bkt.clouddn.com/17-8-18/13245816.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-8-18/97894681.jpg) |
| 描述 | 通过 storyboard 搭建基本框架 | 纯代码和XIB富文本展示 |


## Advantage 框架的优势
* 1.文件少，代码简洁
* 2.不依赖任何其他第三方库
* 3.同时支持纯代码和XIB方式创建
* 4.支持点击事件和图文混编
* 5.具备较高自定义性

## Requirements 要求
* iOS 7+
* Xcode 8+


## Usage 使用方法
### 第一步 引入头文件
```
#import "RSAttributeLabel.h"
```
### 第二步 简单调用
```
RSAttributeLabel *label0 = [[RSAttributeLabel alloc]initWithFrame:CGRectMake(16, 100, K_ScreenWidth - 16 * 2, 100)];
label0.text = @"1、这是一个<富文本label>，当你点击红色的文字的时候，你会看到一个弹框，当你点击确定按钮时候，会在控制台输出你所点击的<文字>,如果你想展示\\<\\>,那么需要在‘\\<’和‘\\>’前加两个'\\'进行转义。";
label0.font = [UIFont systemFontOfSize:10];
label0.textColor = [UIColor blackColor];
label0.highlightFont = [UIFont systemFontOfSize:12];
label0.highlightColor = [UIColor redColor];
label0.HighlightAction = ^(NSString *highlightText){
     ALERT_VIEW(@"您点击了高亮文字",highlightText, @"取消", ^{}, @"确定", ^{
         NSLog(@"highlightText:%@",highlightText);
     });
};
[self.view addSubview:label0];
```
富文本语法也就是这段文字的内容，😆，想要图文混编，就像这样[weixin.png]，就可以了。


使用简单、效率高效、进程安全~~~如果你有更好的建议,希望不吝赐教!


## License 许可证
RSAttributeLabel 使用 MIT 许可证，详情见 LICENSE 文件。


## Contact 联系方式:
* WeChat : WhatsXie
* Email : ReverseScale@iCloud.com
* Blog : https://reversescale.github.io
