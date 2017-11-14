![alt text][logo]

# Video Advertising for tvOS
### The tvOS SDK for VAST video ads and SRT subtitles. Monetize your apps on Apple TV.
***
## Feature:
- Support Objective-C and Swift 3.0
- SRT Subtitle
- multiple VAST2 video ads. (pre-roll, mid-roll and post-roll)
- Custom overlay channel icon
- Callback of video and Ad events
- Custom solution
- Professional support

## Requirements
- Requires tvOS 9.0+
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

## Import License
1. [Contact us] for the license key
2. In info.plist, add ATVVideoPlayerLicenseKey: [license key]
![alt text][license]
3. License key is not required in trial version. However there is a watermark overlay on screen.

## Demo Project
1. Pull this git repository. 
2. Add framwork in to project.
4. Build and Run.

## Documentation
* [API Reference] 

## Release Notes
##### Version 1.0.1 (Nov 14, 2017)
Bug Fixes
* Fixed an issue where completeion event is fired when Ad is error.

## Contact Us
Website: https://atvplayer.zensis.com  
Email: service@zensis.com

Copyright :copyright: 2017 Zensis Ltd.

[API Reference]: http://atvplayer.zensis.com/doc/index.html
[CocoaPods]: https://cocoapods.org/
[Contact us]:https://atvplayer.zensis.com/contact-us.html
[logo]: assets/logo_light.png
[setup]: assets/setup.png
[license]: assets/license.png
[Download ATVPlayer framework]: https://atvplayer.zensis.com/atvplayer_sdk.zip
