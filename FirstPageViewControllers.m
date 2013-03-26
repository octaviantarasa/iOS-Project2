//
//  FirstPageViewControllers.m
//  iOS-Project
//
//  Created by Laborator iOS on 3/26/13.
//  Copyright (c) 2013 Laborator iOS. All rights reserved.
//

#import "FirstPageViewControllers.h"
#import "CreateAccountViewController.h"
#import "SignInViewController.h"
@interface FirstPageViewControllers ()

@end

@implementation FirstPageViewControllers

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)createAccount:(id)sender {
    UIViewController *createAccountView = [[CreateAccountViewController alloc]
                                           initWithNibName:@"CreateAccountViewController" bundle:nil];
    [[self navigationController] pushViewController:createAccountView animated:YES];
    //[self.view addSubview:createAccountView.view];
    
}

- (IBAction)signIn:(id)sender {
    UIViewController *signInView = [[SignInViewController alloc]
                                           initWithNibName:@"SignInViewController" bundle:nil];
    [[self navigationController] pushViewController:signInView animated:YES];
}
@end
