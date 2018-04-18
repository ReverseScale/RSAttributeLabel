# RSAttributeLabel

Simple functionality, using a simpler rich text package

![](https://img.shields.io/badge/platform-iOS-red.svg) 
![](https://img.shields.io/badge/language-Objective--C-orange.svg) 
![](https://img.shields.io/badge/download-2.1MB-brightgreen.svg)
![](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg) 

[EN](#Requirements) | [中文](#中文说明)

Some of the rich text libraries you saw before are mostly cumbersome. Although some of them can be overwhelming with H5 code, most of the time, the features we really need are not many.

## 🎨 Why test the UI?

| 1.List page | 2.Display page | 3.Response page |
| ------------- | ------------- | ------------- |
| ![](http://og1yl0w9z.bkt.clouddn.com/18-4-17/38291783.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/18-4-17/106814.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/18-4-17/84024801.jpg) |
| Build a basic framework via storyboard | Pure code and XIB rich text display | Click on highlight pop-up window |

## 🤖 Requirements

* iOS 9.0+
* Xcode 9.0+
* Objective-C

## 🚀 Getting started

* 1.Less files, simple code
* 2.Does not rely on any other third party library
* 3.Support both plain code and XIB mode creation
* 4.Supports click events and graphic mixing
* 5.Highly customizable

## 🛠 Configuration
### Import header files
```objc
#import "RSAttributeLabel.h"
```
### Simple call
```objc
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
Rich text grammar is also the content of this text. Hey, you want mixed text, like this [weixin.png], you can.

## ⚖ License

```
MIT License

Copyright (c) 2017 ReverseScale

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

## 😬 Contributions

* WeChat : WhatsXie
* Email : ReverseScale@iCloud.com
* Blog : https://reversescale.github.io


# 中文说明
功能简单，使用更简单的富文本封装

![](https://img.shields.io/badge/platform-iOS-red.svg) 
![](https://img.shields.io/badge/language-Objective--C-orange.svg) 
![](https://img.shields.io/badge/download-2.1MB-brightgreen.svg)
![](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg) 

之前见到的一些富文本库大都使用颇为繁琐，虽然有些配合 H5 代码已经可以翻天覆地，但是大多数时候，我们真正需要的功能其实并不多。

## 🎨 测试 UI 什么样子？

|1.列表页 |2.展示页 |3.响应页 |
| ------------- | ------------- | ------------- |
| ![](http://og1yl0w9z.bkt.clouddn.com/18-4-17/38291783.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/18-4-17/106814.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/18-4-17/84024801.jpg) |
| 通过 storyboard 搭建基本框架 | 纯代码和XIB富文本展示 | 点击高亮弹出提示窗 |

## 🤖 要求

* iOS 9.0+
* Xcode 9.0+
* Objective-C

## 🚀 准备开始

* 1.文件少，代码简洁
* 2.不依赖任何其他第三方库
* 3.同时支持纯代码和XIB方式创建
* 4.支持点击事件和图文混编
* 5.具备较高自定义性


## 🛠 配置
### 第一步 引入头文件
```objc
#import "RSAttributeLabel.h"
```
### 第二步 简单调用
```objc
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

## ⚖ 协议

```
MIT License

Copyright (c) 2017 ReverseScale

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

## 😬  联系

* 微信 : WhatsXie
* 邮件 : ReverseScale@iCloud.com
* 博客 : https://reversescale.github.io
