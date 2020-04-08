# KochavaConsentiOS

[![Version](https://img.shields.io/cocoapods/v/KochavaConsentiOS.svg?style=flat)](https://cocoapods.org/pods/KochavaConsentiOS)
[![Download](https://api.bintray.com/packages/kochava/ios/consent/images/download.svg)](https://bintray.com/kochava/ios/consent/_latestVersion)
[![License](https://img.shields.io/cocoapods/l/KochavaConsentiOS.svg?style=flat)](https://cocoapods.org/pods/KochavaConsentiOS)
[![Platform](https://img.shields.io/cocoapods/p/KochavaConsentiOS.svg?style=flat)](https://cocoapods.org/pods/KochavaConsentiOS)

<img src="https://storage.googleapis.com/kochava-web/2016/07/Kochava-horizontal-black-800x154.png" width="260" />

## KochavaConsent iOS Module

The KochavaConsent module of the Kochava iOS SDK provides consent management.  This includes support for CCPA.

The Kochava SDK is a lightweight and easy to integrate SDK written in Objective-C, providing first-class integration with Kochava’s industry leading mobile attribution and analytics platform.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

* iOS 8.0

Prior to version 3.16.0 released in April 2020, library KochavaCore was bundled within module KochavaTracker.  This changed when it was broken out into its own module so that it could be used independently with other modules such as KochavaConsent, KochavaEngagementExtension, and KochavaEntitlements, without requiring the integration of module KochavaTracker.  As a dependency of all modules within the Kochava SDK, you should integrate and update module KochavaCore alongside any other modules which you use.  Package managers such as Cocoapods make this automatic through their dependency management system;  however, when using Direct Downloads such as through Bintray this falls to you.  It is important to always download current versions of each module which you choose to integrate so that compatibility is ensured.

For a typical Kochava Consent integration, you need only include the Core and Consent modules.  Other modules may be added depending on your needs.

## Dependencies

* [KochavaCore](https://cocoapods.org/pods/KochavaCoreiOS)
[![Version](https://img.shields.io/cocoapods/v/KochavaCoreiOS.svg?style=flat)](https://cocoapods.org/pods/KochavaCoreiOS) [ ![Download](https://api.bintray.com/packages/kochava/ios/core/images/download.svg) ](https://bintray.com/kochava/ios/core/_latestVersion)

## Installation

KochavaConsentiOS is available through [CocoaPods](https://cocoapods.org).
To install it, simply add the following line to your Podfile:

```ruby
pod 'KochavaConsentiOS'
```

## Author

Kochava, support@kochava.com

## License

KochavaConsentiOS is available under the [Kochava Terms of Service](https://www.kochava.com/terms-of-service/). See the LICENSE file for more info.
