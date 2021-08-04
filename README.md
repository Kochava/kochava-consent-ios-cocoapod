# KochavaConsentiOS

[![Version](https://img.shields.io/cocoapods/v/KochavaConsentiOS.svg?style=flat)](https://cocoapods.org/pods/KochavaConsentiOS)
[![Releases](https://img.shields.io/github/v/release/kochava/Apple-SwiftPackage-KochavaConsent?include_prereleases&sort=semver)](https://github.com/Kochava/Apple-SwiftPackage-KochavaConsent/releases)
[![License](https://img.shields.io/cocoapods/l/KochavaConsentiOS.svg?style=flat)](https://cocoapods.org/pods/KochavaConsentiOS)
[![Platform](https://img.shields.io/cocoapods/p/KochavaConsentiOS.svg?style=flat)](https://cocoapods.org/pods/KochavaConsentiOS)

<img src="https://storage.googleapis.com/kochava-web/2016/07/Kochava-horizontal-black-800x154.png" width="260" />

## KochavaConsent iOS Module

The KochavaConsent module of the Kochava Apple SDK provides consent management. This includes support for CCPA.

The Kochava SDK is a lightweight and easy to integrate SDK written in Objective-C, providing first-class integration with Kochava’s industry leading mobile attribution and analytics platform.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Built on

* Xcode 12.4

## Requirements

* iOS 10.3

## Dependencies

* [KochavaCore](https://cocoapods.org/pods/KochavaCoreiOS)
[![Version](https://img.shields.io/cocoapods/v/KochavaCoreiOS.svg?style=flat)](https://cocoapods.org/pods/KochavaCoreiOS) [![Download](https://img.shields.io/github/v/release/kochava/Apple-SwiftPackage-KochavaCore?include_prereleases&sort=semver)](https://github.com/Kochava/Apple-SwiftPackage-KochavaCore/releases)
* [KochavaUI](https://cocoapods.org/pods/KochavaUIiOS)
[![Version](https://img.shields.io/cocoapods/v/KochavaUIiOS.svg?style=flat)](https://cocoapods.org/pods/KochavaUIiOS) [![Download](https://img.shields.io/github/v/release/kochava/Apple-SwiftPackage-KochavaUI?include_prereleases&sort=semver)](https://github.com/Kochava/Apple-SwiftPackage-KochavaUI/releases)

## Installation

KochavaConsentiOS is available through [CocoaPods](https://cocoapods.org).
To install it, simply add the following line to your Podfile:

```ruby
pod 'KochavaConsentiOS'
```

## Author

Kochava, support@kochava.com

## License

KochavaConsent is available under the [Kochava Terms of Service](https://www.kochava.com/terms-of-service/). See the LICENSE file for more info.


## Default Branch

As of October 1, 2020, github.com uses the branch name ‘main’ when creating the initial default branch for all new repositories.  In order to minimize any customizations in our github usage and to support consistent naming conventions, we have made the decision to rename the ‘master’ branch to be called ‘main’ in all Kochava’s github repos.

For local copies of the repo, the following steps will update to the new default branch:

```
git branch -m master main
git fetch origin
git branch -u origin/main main
git remote set-head origin -a
```
