//
//  KVAConsentAuditEntry.h
//  KochavaConsent
//
//  Created by John Bushnell on 12/11/19.
//  Copyright © 2020 Kochava, Inc. All rights reserved.
//



#ifndef KVAConsentAuditEntry_h
#define KVAConsentAuditEntry_h



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
#import "KVAAsForContextObjectProtocol.h"
#import "KVAFromObjectProtocol.h"
#endif



#pragma mark - INTERFACE



/*!
 @class KVAConsentAuditEntry
 
 @brief A push notifications token.
 
 @author John Bushnell
 
 @copyright 2017 - 2020 Kochava, Inc.
 */
@interface KVAConsentAuditEntry : NSObject <KVAAsForContextObjectProtocol, KVAFromObjectProtocol>



#pragma mark - PROPERTIES



/*!
 @property textString
 
 @brief The string of text.
 */
@property (strong, nonatomic, nullable, readonly) NSString *textString;



/*!
 @property internalBool
 
 @brief The date that the token was provided by the operating system.
 */
@property (readonly) BOOL internalBool;



#pragma mark - CLASS GENERAL



/*!
 @method + addWithData:
 
 @brief A method which adds a device token.
 
 @param textString A string of text.
 */
+ (void)addWithTextString:(nonnull NSString *)textString NS_SWIFT_NAME(add(withTextString:));



@end



#endif



