
/*
 Copyright 2010 OuterCurve Foundation
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

#import "DetailsViewController.h"
#import "ODataSampleAppAppDelegate.h"


@implementation DetailsViewController

@synthesize items;


- (id)initWithStyle:(UITableViewStyle)style {
    // Override initWithStyle: if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
    if (self = [super initWithStyle:style]) {
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
	NSLog(@"detailsview loaded");
	[[self navigationController] setNavigationBarHidden:NO];
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	NSLog(@"didReceiveMemoryWarning........");
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


#pragma mark Table view methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 6;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }

	
	
    // Set up the cell...
	
	
	if(indexPath.row == 0)
		cell.textLabel.text =[NSString stringWithFormat:@"Id = %@",items.m_TweetID];	
	else if(indexPath.row == 1)
		cell.textLabel.text =[NSString stringWithFormat:@"Author = %@",items.m_Author];
	else if(indexPath.row == 2)
		cell.textLabel.text =[NSString stringWithFormat:@"Text = %@",items.m_Text];	
	else if(indexPath.row == 3)
		cell.textLabel.text = [NSString stringWithFormat:@"SessionId = %@",items.m_SessionID];	
	
	
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here. Create and push another view controller.
}


- (void)dealloc {
	[items release];
	items=nil;
    [super dealloc];
}


@end

