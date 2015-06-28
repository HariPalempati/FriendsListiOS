//
//  ViewController.m
//  FriendsList
//
//  Created by Hari Krishna Palempati on 27/06/15.
//  Copyright (c) 2015 Hari Krishna Palempati. All rights reserved.
//

#import "ViewController.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <Accounts/Accounts.h>
#import <Social/Social.h>
#import "Friends.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
    loginButton.center = self.view.center;
    [self.view addSubview:loginButton];
    
    
    UIButton * Friends = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 200, 40)];
    [Friends setTitle:@"Friends" forState:UIControlStateNormal];
    [Friends setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [Friends addTarget:self action:@selector(FriendsClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:Friends];
    
}

- (void)FriendsClicked {
    
    Friends * f = [[Friends alloc]init];
    
    [self.navigationController pushViewController:f animated:YES];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end