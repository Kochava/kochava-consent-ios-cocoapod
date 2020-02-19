//
//  KVAUSPrivacyStringValue.h
//  KochavaConsent
//
//  Created by John Bushnell on 2/7/20.
//  Copyright © 2020 Kochava, Inc. All rights reserved.
//



#ifndef KVAUSPrivacyStringValue_h
#define KVAUSPrivacyStringValue_h



#pragma mark - IMPORT



#ifdef KOCHAVA_FRAMEWORK
#if TARGET_OS_TV
#if TARGET_OS_SIMULATOR
#import <KochavaCoreTVOSSimulator/KochavaCoreTVOSSimulator.h>
#else
#import <KochavaCoreTVOSDevice/KochavaCoreTVOSDevice.h>
#endif
#else
#if TARGET_OS_SIMULATOR
#import <KochavaCoreiOSSimulator/KochavaCoreiOSSimulator.h>
#else
#import <KochavaCoreiOSDevice/KochavaCoreiOSDevice.h>
#endif
#endif
#else
#import "KVAFromObjectProtocol.h"
#endif



#pragma mark - INTERFACE



@interface KVAUSPrivacyStringValue : NSObject <KVAFromObjectProtocol>



#pragma mark - CLASS PROPERTIES



/*!
 @property + yes
 
 @brief An enumerated shared instance of KVAUSPrivacyStringValue for Yes.
 */
@property (class, strong, nonatomic, nonnull, readonly) KVAUSPrivacyStringValue *yes;



/*!
 @property + no
 
 @brief An enumerated shared instance of KVAUSPrivacyStringValue for No.
 */
@property (class, strong, nonatomic, nonnull, readonly) KVAUSPrivacyStringValue *no;



/*!
 @property + notApplicable
 
 @brief An enumerated shared instance of KVAUSPrivacyStringValue for Not Applicable.
 */
@property (class, strong, nonatomic, nonnull, readonly) KVAUSPrivacyStringValue *notApplicable;



#pragma mark - PARAMETERS



/*!
 @property nameString
 
 @brief The name.
 */
@property (strong, nonatomic, nonnull, readonly) NSString *nameString;



/*!
 @property rawString
 
 @brief The raw string value as found in the IAB US Privacy String at a given position.
 */
@property (strong, nonatomic, nonnull, readonly) NSString *rawString;



@end



#endif



