# BreakingNews

![](https://github.com/goshabedunkevich/BreakingNews/blob/master/example.gif)
[![CI Status](https://img.shields.io/travis/goshabedunkevich/BreakingNews.svg?style=flat)](https://travis-ci.org/goshabedunkevich/BreakingNews)
[![Version](https://img.shields.io/cocoapods/v/BreakingNews.svg?style=flat)](https://cocoapods.org/pods/BreakingNews)
[![License](https://img.shields.io/cocoapods/l/BreakingNews.svg?style=flat)](https://cocoapods.org/pods/BreakingNews)
[![Platform](https://img.shields.io/cocoapods/p/BreakingNews.svg?style=flat)](https://cocoapods.org/pods/BreakingNews)

## Usage
```swift
// The view will be dismissed automatically when the user taps on it.
let breaking = self.navigationController as! Breaking
breaking.news(nil, .link, .white)
breaking.breakingNewsDelegate = self
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

BreakingNews is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'BreakingNews'
```

## Author

Egor Bedunkevich, goshabedunkevich@gmail.com

## License

BreakingNews is available under the MIT license. See the LICENSE file for more info.
