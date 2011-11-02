//
//  About.h
//  HadsBezan
//
//  Created by Ali on 7/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface About : UIViewController <MFMailComposeViewControllerDelegate> {

	
	
}
-(IBAction)sendmailtome;
-(IBAction)sendmailtoothers;
@end
