//
//  SignInViewController.m
//  Landscapes Location
//
//  Created by Laborator iOS on 3/26/13.
//  Copyright (c) 2013 Laborator iOS. All rights reserved.
//

#import "SignInViewController.h"
#import "HomeViewController.h"


@interface SignInViewController ()

@end

@implementation SignInViewController
@synthesize EmailText;
@synthesize passwordText;
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
    return YES
    ;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    EmailText.delegate = self;
    passwordText.delegate = self;
    
    EmailText.center = CGPointMake(123.0f, 200.0f);
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    if([[UIScreen mainScreen]bounds].size.height == 568 )
    {
        [self.view setFrame:CGRectMake(0, -100, 320, 560)];
    }
    else
    {
        [self.view setFrame:CGRectMake(0, -100, 320, 460)];
        
    }
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    if([[UIScreen mainScreen]bounds].size.height == 568 )
    {
        [self.view setFrame:CGRectMake(0, -58, 320, 560)];
    }
    else
    {
        [self.view setFrame:CGRectMake(0, -58, 320, 460)];
        
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)signIn:(id)sender {
    
    UIViewController *homeViewContr = [[HomeViewController alloc]
                                    initWithNibName:@"HomeViewController"
                                       bundle:nil];
    UINavigationController *homePageNavigationController = [[UINavigationController alloc] initWithRootViewController:homeViewContr];
    
    self.view.window.rootViewController = homePageNavigationController;
        
    
}
@end
