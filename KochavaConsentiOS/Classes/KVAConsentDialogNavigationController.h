//
//  KVAConsentDialogNavigationController.h
//  KochavaConsent
//
//  Created by John Bushnell on 2/18/20.
//  Copyright © 2020 Kochava, Inc. All rights reserved.
//



#ifndef KVAConsentDialogNavigationController_h
#define KVAConsentDialogNavigationController_h



#pragma mark - IMPORT



#import <UIKit/UIKit.h>



#pragma mark - CLASS



@class KVAConsentDialogNavigationController;



#pragma mark - TYPEDEF



/*!
 @typedef KVAConsentDialogNavigationControllerDidCompleteBlock
 
 @brief A block which is called when the navigation controller's lifecycle did complete.
 
 @discussion Set this value to dismiss the view controller.
 */
typedef void (^ KVAConsentDialogNavigationControllerDidCompleteBlock) (KVAConsentDialogNavigationController * _Nonnull consentDialogNavigationController);



/*!
 @typedef KVAConsentDialogNavigationControllerDidRequestToOpenURLBlock
 
 @brief A block which is called when an event occurs which requests to open a url.
 
 @discussion Set this value to open the specified url.
 */
typedef void (^ KVAConsentDialogNavigationControllerDidRequestToOpenURLBlock) (KVAConsentDialogNavigationController * _Nonnull consentDialogNavigationController, NSURL * _Nonnull url);



#pragma mark - INTERFACE



@interface KVAConsentDialogNavigationController : UINavigationController



#pragma mark - LIFECYCLE



/*!
 @method + consentDialogNavigationControllerWithDidRequestToOpenURLBlock:didCompleteBlock:
 
 @brief Constructs an returns an instance of KVAConsentDialogNavigationController.
 
 @param didRequestToOpenURLBlock A block which is called when an event occurs which requests to open a url.  Set this value to open the specified url.
 
 @param didCompleteBlock A block which is called when the navigation controller's lifecycle did complete.  Set this value to dismiss the view controller.
 */
+ (nullable instancetype)consentDialogNavigationControllerWithDidRequestToOpenURLBlock:(nonnull KVAConsentDialogNavigationControllerDidRequestToOpenURLBlock)didRequestToOpenURLBlock didCompleteBlock:(nonnull KVAConsentDialogNavigationControllerDidCompleteBlock)didCompleteBlock  NS_SWIFT_NAME(init(didRequestToOpenURLBlock:didCompleteBlock:));



@end



#endif



