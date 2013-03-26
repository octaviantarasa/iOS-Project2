//
//  CreateAccountViewController.h
//  Landscapes Location
//
//  Created by Laborator iOS on 3/26/13.
//  Copyright (c) 2013 Laborator iOS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreateAccountViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *emailText;
@property (strong, nonatomic) IBOutlet UITextField *passwordText;
@property (strong, nonatomic) IBOutlet UITextField *passwordConfirmationText;
- (IBAction)createAccount:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *userNameText;
@end
