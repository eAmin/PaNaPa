//
//  FirstViewController.m
//  PaNaPa
//
//  Created by Ali on 7/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"

int lastindex;
int currentindex;


@implementation FirstViewController

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
	if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/




// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	NSUserDefaults *Pref = [NSUserDefaults standardUserDefaults];
	lastindex = [[Pref objectForKey:@"lastindex"] intValue];
 //  mytext setTextAlignment:UITextAlignmentRight];	
    
	
	
	if (lastindex== nil) {
		lastindex = 10;
		[Pref setObject:@"زنگ زدم ۱۱۰ میگم اقا دزد اومده اینجا\n میگه چیزی هم برده؟!\n پَ نه پَ یه سری خورده ریز واسمون اورده, گفتم زنگ بزنم ببینم اگه اونجاس گوشی رو بدید ازش تشکر کنم !" forKey:@"0"];
		[Pref setObject:@"چشام پر اشک، بغض تو گلوم\n میگه میخوای گریه کنی ؟\n پَ نه پَ میخوام ببینم با چشام میتونم بشاشـم ؟" forKey:@"1"];
		[Pref setObject:@"با دوستم رفتیم سینما\n تاریک تاریک بود\n مسئول سینما از دور داشت میومد\nدوستم میگه این کنترل چیه؟\nپَ نه پَ موتور گازی بیا کنار نزنه بهت" forKey:@"2"];
		[Pref setObject:@"رفتیم کوه\nدارم چوب جمع میکنم\nمیگه می خوای با چوبا آتیش درست کنی؟\nپَ نه پَ پشت دریاها شهریست قایقی خواهم ساخت" forKey:@"3"];
		[Pref setObject:@"به بابام میگم تلویزیونو بزن کانال دو\n میگه روشنش کنم\n پَ نه پَ تو بزن دو,من هُل میدم روشن شه" forKey:@"4"];
		[Pref setObject:@"یارو زده روح الله داداشی رو کشته,حالا گرفتنش,میگه حالا چی میشه ؟ اعدامش میکنن\nپَ نه پَ میره مرحله بعد باید محراب فاطمی روهم بکشه؟" forKey:@"5"];
		[Pref setObject:@"با کمر دولا رفتم داروخانه عصا بگیرم میگه عصا برای کمر دردت میخوای ؟ \n میگم پ ن پ حضرت موسی کلاسای تبدیل اژدها گذاشته دارم میرم اونجا" forKey:@"6"];
		[Pref setObject:@"دارم به خواهر زادم دیکته میگم\nرسیده آخر خط میگه دایی برم سر خط ؟\n پَ نه پَ بقیشو رو فرش بنویس" forKey:@"7"];
		[Pref setObject:@"زنگ زدم اورژانس میگم تصادف شده\nیارو میپرسه کسی هم صدمه دیده\nپَ نه پَ فقط زنگ زدم بگم همه سالمند که از نگرانی درتون بیارم" forKey:@"8"];
		[Pref setObject:@"رفتم دندونپزشکی به دکتره میگم آقای دکتر این دندون عقلم کج دراومده.اومدم حسابشو برسی\nدکتره میگه یعنی میگی بکشمش؟\nپَ نه پَ گفتم دکتری.یکم نصیحتش کنی بلکه به راه راست هدایت شه" forKey:@"9"];
		[Pref setObject:@"سر کلاس دستمو بلند کردم استاد میگه سوال داری ؟ \n پَ نه پَ « های هیتلر » !" forKey:@"10"];

	}
			mytext.textAlignment = UITextAlignmentLeft;
	        //NSUserDefaults *Pref = [NSUserDefaults standardUserDefaults];
	        currentindex = 0;
			NSString * temp =[ NSString stringWithFormat:@"%d",currentindex];	
	       mytext.editable = TRUE;
	        
			mytext.text = [Pref objectForKey:temp];
	        cindex.text = temp;
	       mytext.editable = FALSE;
	
	
	
	UISwipeGestureRecognizer *rightRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(rightSwipeHandle:)];
	rightRecognizer.direction = UISwipeGestureRecognizerDirectionRight;
	[rightRecognizer setNumberOfTouchesRequired:1];
	[mytext addGestureRecognizer:rightRecognizer];
	[rightRecognizer release];
	UISwipeGestureRecognizer *leftRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(leftSwipeHandle:)];
	leftRecognizer.direction = UISwipeGestureRecognizerDirectionLeft;
	[leftRecognizer setNumberOfTouchesRequired:1];
	[mytext addGestureRecognizer:leftRecognizer];
	[leftRecognizer release];  
	
	
}


-(BOOL) textViewShouldBeginEditing: (UITextView *) textView

{
	
	return NO;
}
	
	
	
-(IBAction)copy
{
  UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
	pasteboard.string = mytext.text;
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"کپی" 
													message:@"متن کپی شد"
												   delegate:nil 
										  cancelButtonTitle:@"بازگشت" 
										  otherButtonTitles: nil];
	[alert show];
	[alert release];
}
    


	
-(BOOL)checkinternet
{
	NSString * myurl =[ NSString stringWithFormat:@"http://www.google.com"];
	NSURL *url = [NSURL URLWithString:myurl];
	NSString *test = [NSString stringWithContentsOfURL:url];
	if (test == NULL)
	return FALSE;
	else
	return TRUE;
				   
}


- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
	
    if([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
	
    return YES;
}



-(IBAction)update
{
	if (![self checkinternet]) {
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"خطا" 
														message:@"شما به اینترنت دسترسی ندارید"
													   delegate:nil 
											  cancelButtonTitle:@"بازگشت" 
											  otherButtonTitles: nil];
		[alert show];
		[alert release];
		return;
	}
	
	
	
	
	//[self show];
	NSString * myurl =[ NSString stringWithFormat:@"http://www.yourdomain.com/index.php?id=%d",lastindex];
	
	NSMutableArray *myarray = [[NSMutableArray alloc]init];
	NSURL *url = [NSURL URLWithString:myurl];	
	myarray = [NSMutableArray arrayWithContentsOfURL:url];
	if ([myarray count]!=0) {
		for (int i = 0; i<[myarray count]; i++) {
			lastindex++;
			NSUserDefaults *Pref = [NSUserDefaults standardUserDefaults];
			NSString * temp =[ NSString stringWithFormat:@"%d",lastindex];
			[Pref setObject:[myarray objectAtIndex:i] forKey:temp];
			[Pref setInteger:lastindex forKey:@"lastindex"];
		}
		
		
	}
	
	int i = [myarray count];
	NSString *Message;
	if (i>0) {
		
		Message = [ NSString stringWithFormat:@"\n %d جمله \n\n اضافه شد",i];
	}
	else {
		
		Message = [ NSString stringWithFormat:@"\n برنامه شما به روز است \n\n جمله ای اضافه نشد"];
	}
	
    
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"به روز رسانی" 
													message:Message
												   delegate:nil 
										  cancelButtonTitle:@"بازگشت" 
										  otherButtonTitles: nil];
	//[myarray release];
	[alert show];
	[alert release];
	
}


- (void)rightSwipeHandle:(UISwipeGestureRecognizer*)gestureRecognizer 
{
	[self before];
}

- (void)leftSwipeHandle:(UISwipeGestureRecognizer*)gestureRecognizer 
{
	[self next];
}


-(void)domyanimationright
{
	[UIView beginAnimations:@"TextAnim" context:nil];
	[UITextView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:mytext cache:YES];
	[UITextView   setAnimationDuration:1.0f];
	[UITextView  setAnimationDelegate:self];
	[UITextView  commitAnimations];	
}

-(void)domyanimationleft
{
	[UIView beginAnimations:@"TextAnim" context:nil];
	[UITextView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:mytext cache:YES];
	[UITextView   setAnimationDuration:1.0f];
	[UITextView  setAnimationDelegate:self];
	[UITextView  commitAnimations];	
}

-(IBAction)first
{

	[self domyanimationleft];
	currentindex=0;
	[self textsetter];

}

-(IBAction)endf
{
	[self domyanimationright];
	currentindex=lastindex;
    [self textsetter];

}


- (void)textFieldShouldBeginEditing:(UITextField *)mytext {
	[mytext resignFirstResponder];
	return;
}

-(IBAction)next
{
	[self domyanimationright];
	if (currentindex < lastindex) {
		
		currentindex++;

	}
	else {
		
		currentindex=0;

		
	}
[self textsetter];
}

-(IBAction)before
{
[self domyanimationleft];
	
	if (currentindex > 0) {
		currentindex--;
		
	}
	else {
		currentindex = lastindex;
		
	}
	[self textsetter];
}


-(IBAction)sendmail
{
		MFMailComposeViewController *controler = [[MFMailComposeViewController alloc]init];
		controler.mailComposeDelegate = self;
		[controler setSubject:@"پ نه پ"];
		[controler setMessageBody:mytext.text isHTML:NO];
		[self presentModalViewController:controler animated:YES];
		[controler release];
	
}


-(IBAction)sendsms
{

	if ([MFMessageComposeViewController canSendText]) {
		
		MFMessageComposeViewController *controler = [[MFMessageComposeViewController alloc]init];
		controler.body = mytext.text;
		controler.messageComposeDelegate = self;
		[self presentModalViewController:controler animated:YES];
		[controler release];	
	}


}


-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
	[self dismissModalViewControllerAnimated:YES];
}
-(void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result
{
	[self dismissModalViewControllerAnimated:YES];
}






-(void)textsetter
{	
	NSUserDefaults *Pref = [NSUserDefaults standardUserDefaults];
	NSString * temp =[ NSString stringWithFormat:@"%d",currentindex];	
	mytext.editable = TRUE;
	mytext.text = [Pref objectForKey:temp];
	cindex.text = [ NSString stringWithFormat:@"%d",currentindex];
    mytext.editable = FALSE;	
}







/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
