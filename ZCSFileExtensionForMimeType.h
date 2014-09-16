//
//  ZCSFileExtensionForMimeType.h
//  ZCSFileExtensionForMimeType
//
//  Created by Zane Shannon on 9/16/14.
//  Copyright (c) 2014 Zane Shannon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZCSFileExtensionForMimeType : NSObject

+ (NSArray*) supportedMimeTypes;
+ (NSString*) extensionForMimeType:(NSString*)mime_type;

@end
