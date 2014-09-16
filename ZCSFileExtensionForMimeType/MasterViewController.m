//
//  MasterViewController.m
//  ZCSFileExtensionForMimeType
//
//  Created by Zane Shannon on 9/16/14.
//  Copyright (c) 2014 Zane Shannon. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "ZCSFileExtensionForMimeType.h"

@implementation MasterViewController

- (void) viewDidLoad {
	[super viewDidLoad];
	UIImageView *bg = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg"]];
	bg.frame = self.view.frame;
	[self.view insertSubview:bg atIndex:0];
	self.tableView.separatorColor = [UIColor whiteColor];
}

#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	if ([[segue identifier] isEqualToString:@"showDetail"]) {
	    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
		NSString *extension = [ZCSFileExtensionForMimeType extensionForMimeType:[[ZCSFileExtensionForMimeType supportedMimeTypes] objectAtIndex:indexPath.row]];
	    [[segue destinationViewController] setDetailItem:extension];
	}
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return [[ZCSFileExtensionForMimeType supportedMimeTypes] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

	NSString *object = [ZCSFileExtensionForMimeType supportedMimeTypes][indexPath.row];
	UILabel *label = (UILabel*)[cell viewWithTag:1];
	label.text = [object description];
	return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

@end
