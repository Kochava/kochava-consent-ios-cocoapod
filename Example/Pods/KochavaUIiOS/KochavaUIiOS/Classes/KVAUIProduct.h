//
//  KVAUIProduct.h
//  KochavaUI
//
//  Created by John Bushnell on 9/21/20.
//  Copyright © 2020 Kochava, Inc.  All rights reserved.
//



#ifndef KVAUIProduct_h
#define KVAUIProduct_h



#pragma mark - IMPORT



#ifdef KOCHAVA_FRAMEWORK
#import <KochavaCore/KochavaCore.h>
#else
#import "KVAProduct.h"
#import "KVASharedPropertyProvider.h"
#endif



#pragma mark - INTERFACE



/*!
 @class KVAUIProduct
 
 @brief A class which defines a UI product.
 
 @discussion A product in this context generally refers to the result of a build.
 
 Inherits from: KVAProduct
 
 @author John Bushnell
 
 @copyright 2019 - 2020 Kochava, Inc.
 */
@interface KVAUIProduct : KVAProduct <KVASharedPropertyProvider>



#pragma mark - SHARED INSTANCE (SINGLETON)



/*!
 @property shared
 
 @brief The singleton shared instance.
 */
@property (class, readonly, strong, nonnull) KVAUIProduct *shared;



@end



#endif



