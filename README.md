# CDZAttributedString

[![CI Status](http://img.shields.io/travis/chenzheng/CDZAttributedString.svg?style=flat)](https://travis-ci.org/chenzheng/CDZAttributedString)
[![Version](https://img.shields.io/cocoapods/v/CDZAttributedString.svg?style=flat)](http://cocoapods.org/pods/CDZAttributedString)
[![License](https://img.shields.io/cocoapods/l/CDZAttributedString.svg?style=flat)](http://cocoapods.org/pods/CDZAttributedString)
[![Platform](https://img.shields.io/cocoapods/p/CDZAttributedString.svg?style=flat)](http://cocoapods.org/pods/CDZAttributedString)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

![Image text](https://raw.githubusercontent.com/baight/CDZAttributedString/master/Example/Example.png)

```ObjC
CDZAttributedString* str = [[CDZAttributedString alloc]init];
str[0].text = @"第一段文字";
str[0].textColor = [UIColor brownColor];
str[0].font = [UIFont systemFontOfSize:15];
str[1].text = @"第二段文字";
str[1].textColor = [UIColor blueColor];
str[1].font = [UIFont boldSystemFontOfSize:20];
self.label.attributedText = [str attributedString];
```

## Requirements

## Installation

CDZAttributedString is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CDZAttributedString'
```

## Author

baight, 303730915@qq.com

## License

CDZAttributedString is available under the MIT license. See the LICENSE file for more info.

