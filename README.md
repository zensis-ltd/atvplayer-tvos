![alt text][logo]

# Video Advertising for tvOS
### The tvOS SDK for VAST video ads and SRT subtitles. Monetize your apps on Apple TV.
***
## Feature:
- Support Objective-C and Swift 4
- SRT Subtitle
- multiple VAST2 video ads. (pre-roll, mid-roll and post-roll)
- VAST3 Ad Pod with Linear Ad
- Custom overlay channel icon
- Callback of video and Ad events
- Custom solution
- Professional support

## Requirements
- Requires tvOS 10.0+
- Requires Automatic Reference Counting (ARC)

## Getting started

#### CocoaPods
If you use [CocoaPods] to manage your dependencies, simply add ATVPlayer to your Podfile:
```
pod 'ATVPlayer'
```
#### Manually
1. [Download ATVPlayer framework] in the project folder
2. Add the ATVPlayer framework to your XCode project. 
   * Project -> General -> Add framework in to Embedded Binaries  
![alt text][setup]

#### Strip unwanted architectures for App submission
From v2.0.5, we built with xcframework. This step is no longer needed.

## Import License
1. [Contact us] for the license key
2. In info.plist, add ATVVideoPlayerLicenseKey: [license key]  
![alt text][license]
3. License key is not required in trial version. However there is a watermark overlay on screen.

## Demo Project

https://github.com/zensis-ltd/atvplayer-tvos

1. Pull this git repository. 
2. Add framwork in to project.
4. Build and Run.

## Documentation
* [API Reference] 

## Release Notes

##### Version 2.0.5 (Oct 12, 2020)
Update to xcframework   
Support Xcode 12

##### Version 2.0.4 (Nov 6, 2019)
Added Build Libraries for Distribution option

##### Version 2.0.3 (Sep 23, 2019)
Support XCode 11
Re-build the library by using Swift 5

##### Version 2.0.2 (Apr 12, 2019)
Support XCode 10.2
Re-build the library by using Swift 4.2

##### Version 2.0.1 (Oct 16, 2018)
Support XCode 10.  
Support VAST3 Ad Pod (Linear Ad)   
[v2 release notes]

##### Version 2.0.0 (Oct 16, 2018)
Same as 2.0.0. Support XCode 9 only

##### Version 1.0.5 (Aug 17, 2018)
Fixed potential memory issue.

##### Version 1.0.4 (Jun 22, 2018)
Bug Fixes

##### Version 1.0.3 (Jun 14, 2018)
Bug Fixes
* Fixed crash issue when create / deallocate player

##### Version 1.0.2 (Nov 17, 2017)
Bug Fixes
* Fixed issue where when submitting to App Store, iTunes would complain about bitcode

##### Version 1.0.1 (Nov 14, 2017)
Bug Fixes
* Fixed an issue where completeion event is fired when Ad is error.

## Contact Us
Website: https://atvplayer.zensis.com 

Email: service@zensis.com

Copyright :copyright: 2018 Zensis Ltd.

[API Reference]: https://atvplayer.zensis.com/doc/index.html
[CocoaPods]: https://cocoapods.org/
[Contact us]: https://atvplayer.zensis.com/contact-us.html
[logo]: https://atvplayer.zensis.com/demo/assets/logo_light.png
[setup]: https://atvplayer.zensis.com/demo/assets/setup.png
[license]: https://atvplayer.zensis.com/demo/assets/license.png
[new_run_script]: https://atvplayer.zensis.com/demo/assets/new_run_script.png
[run_script]: https://atvplayer.zensis.com/demo/assets/run_script.png
[Download ATVPlayer framework]: https://atvplayer.zensis.com/atvplayer_sdk.zip
[Download v2.0.0 framework]: https://atvplayer.zensis.com/atvplayer_sdk_2_0_0.zip
[v2 release notes]: docs/v2_release.md
