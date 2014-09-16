ZCSFileExtensionForMimeType
=================

## Add to your Podfile

`pod 'ZCSFileExtensionForMimeType', '~> 0.0.1'`

## Use in your project

### Setup

```obj-c
#import "ZCSFileExtensionForMimeType.h"

// Somewhere you've already gotten a mime_type for your file.
NSString *mime_type = @"audio/mp4";
// Now you want the correct file extension. Save your file at a path
// terminated with this extension so iOS won't crap the bed sometimes.
NSString *file_extension = [ZCSFileExtensionForMimeType extensionForMimeType:mime_type];
	
```

## Contributing ##

Send me Pull Requests here, please.