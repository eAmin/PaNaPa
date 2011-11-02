//
//  About.m
//  HadsBezan
//
//  Created by Ali on 7/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "About.h"

@implementation About

-(IBAction)sendmailtome
{
	MFMailComposeViewController *controler = [[MFMailComposeViewController alloc]init];
	controler.mailComposeDelegate = self;
	[controler setSubject:@"درباره پ نه پ"];
	[controler setToRecipients:[NSArray arrayWithObject:@"ali.pourhadi@gmail.com"]];
	[self presentModalViewController:controler animated:YES];
	
	[controler release];
}

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
	[self dismissModalViewControllerAnimated:YES];
}

-(IBAction)sendmailtoothers;
{
	MFMailComposeViewController *controler = [[MFMailComposeViewController alloc]init];
	controler.mailComposeDelegate = self;
	[controler setSubject:@"برنامه پ نه پ"];
	[controler setMessageBody:@"<p align=\"right\">سلام</p></br><p align=\"right\">پ نه پ برنامه رایگان مخصوص آیفون و آیپد هست</p></br><p align=\"right\">پ نه پ برنامه به این خوبی رو دانلود نکن</p></br></br><p align=\"right\"><a href=\"http://itunes.apple.com/us/app/panapa/id453124444?ls=1&mt=8\">دانلود</a></p>" isHTML:YES];
	[self presentModalViewController:controler animated:YES];
	[controler release];
}

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
