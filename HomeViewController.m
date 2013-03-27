//
//  HomeViewController.m
//  iOS-Project
//
//  Created by Laborator iOS on 3/27/13.
//  Copyright (c) 2013 Laborator iOS. All rights reserved.
//

#import "HomeViewController.h"
#define BARBUTTON(TITLE,SELECTOR) [[UIBarButtonItem alloc] initWithTitle:TITLE style:UIBarButtonItemStylePlain target:self action:SELECTOR]
@interface HomeViewController ()

@end

@implementation HomeViewController
@synthesize menuTableView;
@synthesize menuView;
@synthesize contentToolbar;
@synthesize contentView;
@synthesize menuLabelColor;

- (void) toggleMenu: (id) sender
{
    
    
    [UIView beginAnimations:@"Menu Slide" context:nil];
    [UIView setAnimationDuration:0.2];
    
    if(self.contentView.frame.origin.x == 0) //Menu is hidden
    {
        CGRect newFrame = CGRectOffset(self.contentView.frame, self.menuView.frame.size.width, 0.0);
        self.contentView.frame = newFrame;
    }
    else //Menu is shown
    {
        [menuTableView reloadData];
        CGRect newFrame = CGRectOffset(self.contentView.frame, -(self.menuView.frame.size.width), 0.0);
        self.contentView.frame = newFrame;
    }
    
    [UIView commitAnimations];
}

- (void) loadView
{
    [super loadView];
    
    self.view.backgroundColor = [UIColor whiteColor];
	
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:0.20392f green:0.19607f blue:0.61176f alpha:1.0f];
    
    self.navigationItem.leftBarButtonItem = BARBUTTON(@"Menu", @selector(toggleMenu:));
}


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

@end
