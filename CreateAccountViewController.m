//
//  CreateAccountViewController.m
//  Landscapes Location
//
//  Created by Laborator iOS on 3/26/13.
//  Copyright (c) 2013 Laborator iOS. All rights reserved.
//

#import "CreateAccountViewController.h"

@interface CreateAccountViewController ()

@end

@implementation CreateAccountViewController
@synthesize emailText,passwordText,passwordConfirmationText,userNameText;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(BOOL) textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    emailText.delegate = self;
    passwordText.delegate = self;
    passwordConfirmationText.delegate = self;
    userNameText.delegate = self;
    emailText.center = CGPointMake(123.0f, 200.0f);
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    if([[UIScreen mainScreen]bounds].size.height == 568 )
    {
        [self.view setFrame:CGRectMake(0, -135, 320, 560)];
    }
    else
    {
        [self.view setFrame:CGRectMake(0, -135, 320, 460)];
        
    }
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    if([[UIScreen mainScreen]bounds].size.height == 568 )
    {
        [self.view setFrame:CGRectMake(0, -31, 320, 560)];
    }
    else
    {
        [self.view setFrame:CGRectMake(0, -31, 320, 460)];
        
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)createAccount:(id)sender {
}
@end
