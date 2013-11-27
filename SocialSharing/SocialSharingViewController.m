//
//  SocialSharingViewController.m
//  SocialSharing
//
//  Created by Alain Malenfant on 11/27/2013.
//  Copyright (c) 2013 Alain Malenfant. All rights reserved.
//

#import "SocialSharingViewController.h"

@interface SocialSharingViewController ()
- (IBAction)postToTwitter:(id)sender;
- (IBAction)postToFacebook:(id)sender;

@end

@implementation SocialSharingViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)postToTwitter:(id)sender {
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter])
    {
        SLComposeViewController *tweetSheet = [SLComposeViewController
                                               composeViewControllerForServiceType:SLServiceTypeTwitter];
        [tweetSheet setInitialText:@"Great fun to learn iOS programming at appcoda.com!"];
        [self presentViewController:tweetSheet animated:YES completion:nil];
    }
}
- (IBAction)postToFacebook:(id)sender {
}
@end
