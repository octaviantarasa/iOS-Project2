//
//  SignInViewController.h
//  Landscapes Location
//
//  Created by Laborator iOS on 3/26/13.
//  Copyright (c) 2013 Laborator iOS. All rights reserved.
//


#import <UIKit/UIKit.h>


@interface SignInViewController : UIViewController <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *EmailText;
@property (strong, nonatomic) IBOutlet UITextField *passwordText;
- (IBAction)signIn:(id)sender;

@end
