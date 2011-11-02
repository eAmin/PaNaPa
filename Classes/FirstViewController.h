//
//  FirstViewController.h
//  PaNaPa
//
//  Created by Ali on 7/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface FirstViewController : UIViewController <MFMessageComposeViewControllerDelegate,MFMailComposeViewControllerDelegate,UITextViewDelegate>{

	NSMutableArray *wordsarray;
	IBOutlet UITextView *mytext;
	IBOutlet UILabel *cindex;
	IBOutlet UILabel *mystatus;
}

-(IBAction)update;
-(IBAction)next;
-(IBAction)before;
-(IBAction)sendmail;
-(IBAction)sendsms;
-(IBAction)first;
-(IBAction)endf;
-(IBAction)copy;
-(void)textsetter;

@end
