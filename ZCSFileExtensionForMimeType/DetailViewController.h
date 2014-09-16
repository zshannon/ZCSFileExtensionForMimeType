//
//  DetailViewController.h
//  ZCSFileExtensionForMimeType
//
//  Created by Zane Shannon on 9/16/14.
//  Copyright (c) 2014 Zane Shannon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

