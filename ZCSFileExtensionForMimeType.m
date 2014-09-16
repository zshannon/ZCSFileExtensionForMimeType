//
//  ZCSFileExtensionForMimeType.m
//  ZCSFileExtensionForMimeType
//
//  Created by Zane Shannon on 9/16/14.
//  Copyright (c) 2014 Zane Shannon. All rights reserved.
//

#import "ZCSFileExtensionForMimeType.h"

@interface ZCSFileExtensionForMimeType()

+ (NSDictionary*)lookupHash;

@end

@implementation ZCSFileExtensionForMimeType

+ (NSArray*) supportedMimeTypes {
	return [[ZCSFileExtensionForMimeType lookupHash] allKeys];
}

+ (NSString*) extensionForMimeType:(NSString*)mime_type {
	return [[ZCSFileExtensionForMimeType lookupHash] valueForKey:mime_type];
}

#pragma mark - Private Methods
// Source: https://developer.apple.com/library/mac/documentation/Miscellaneous/Reference/UTIRef/Articles/System-DeclaredUniformTypeIdentifiers.html
+ (NSDictionary*) lookupHash {
	static NSDictionary *lookupHash = nil;
	if (lookupHash == nil) {
		lookupHash = [[NSMutableDictionary alloc] init];
#pragma mark - Audio
#pragma mark MP3
		[lookupHash setValue:@"mp3" forKey:@"audio/mpeg"];
		[lookupHash setValue:@"mp3" forKey:@"audio/mpeg3"];
		[lookupHash setValue:@"mp3" forKey:@"audio/mpg"];
		[lookupHash setValue:@"mp3" forKey:@"audio/mp3"];
		[lookupHash setValue:@"mp3" forKey:@"audio/x-mpeg"];
		[lookupHash setValue:@"mp3" forKey:@"audio/x-mpeg3"];
		[lookupHash setValue:@"mp3" forKey:@"audio/x-mpg"];
		[lookupHash setValue:@"mp3" forKey:@"audio/x-mp3"];
#pragma mark MP4
		[lookupHash setValue:@"m4a" forKey:@"audio/mp4"];
		
#pragma mark - Movie
#pragma mark MOV
		[lookupHash setValue:@"mov" forKey:@"video/quicktime"];
#pragma mark MPEG
		[lookupHash setValue:@"mpg" forKey:@"video/mpg"];
		[lookupHash setValue:@"mpeg" forKey:@"video/mpeg"];
		[lookupHash setValue:@"mpg" forKey:@"video/x-mpg"];
		[lookupHash setValue:@"mpeg" forKey:@"video/x-mpeg"];
#pragma mark MPEG4
		[lookupHash setValue:@"mp4" forKey:@"video/mp4"];
		[lookupHash setValue:@"mp4" forKey:@"video/mp4v"];
		
#pragma mark - Image
#pragma mark JPEG
		[lookupHash setValue:@"jpg" forKey:@"image/jpg"];
		[lookupHash setValue:@"jpeg" forKey:@"image/jpeg"];
#pragma mark TIFF
		[lookupHash setValue:@"tiff" forKey:@"image/tiff"];
#pragma mark PNG
		[lookupHash setValue:@"png" forKey:@"image/png"];
#pragma mark GIF
		[lookupHash setValue:@"gif" forKey:@"image/gif"];
		
		lookupHash = [lookupHash copy];
	}
	return lookupHash;
}

@end
