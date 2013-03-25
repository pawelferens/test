//
//  ViewController.m
//  BridgeTest
//
//  Created by Pawel Ferens on 2/14/13.
//  Copyright (c) 2013 Pawel Ferens. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize webView;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [webView loadHTMLString:@"siemano<br>polska" baseURL:nil];
    NSURL *url=[[NSURL alloc]initWithString:@"http://www.allegro.pl"];
    NSURLRequest *request=[[NSURLRequest alloc]initWithURL:url];
    [webView loadRequest:request];
    [webView setScalesPageToFit:false];
    [webView.superview setBackgroundColor:[UIColor brownColor]];
    webView.alpha=0.7f;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
