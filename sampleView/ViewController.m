//
//  ViewController.m
//  sampleView
//
//  Created by Sailaja Kamisetty on 09/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize sample,example,scroll,next;
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
//    NSArray *views = [NSArray arrayWithObjects:sample,example, nil];
//    for (int i = 0; i < views.count; i++) 
//    {
//        UIView *subview = [views objectAtIndex:i];
        CGRect frame;
        frame.origin.x = self.scroll.frame.size.width+10;
        frame.origin.y = example.frame.origin.y-30;
        frame.size = self.scroll.frame.size;
        example.frame = frame;
//        if (i == 0) {
//            
//            exampleView = [[UIView alloc]initWithFrame:frame];
//            [exampleView addSubview:[views objectAtIndex:i+1]];
//            [exampleView setTag:101];
//              NSLog(@"exview is :%@",[views objectAtIndex:i+1]);
//            [self.scroll addSubview:exampleView];
//        }
//    NSArray * subviews  = [NSArray arrayWithArray:self.scroll.subviews];
//    
//    UIView *exampleView = (UIView *)[subviews objectAtIndex:0];
//    UIView *sampleView = [[UIView alloc]initWithFrame:CGRectMake(self.scroll.frame.size.width+10, exampleView.frame.origin.y, exampleView.frame.size.width, exampleView.frame.size.height)];
//     [sampleView addSubview:exampleView];
//    NSLog(@"sampleView is :%@",sampleView);
    self.next.frame = CGRectMake(self.scroll.frame.size.width+10, next.frame.origin.y, next.frame.size.width, next.frame.size.height);
        [self.scroll addSubview:next];

//    }
    
    self.scroll.contentSize = CGSizeMake(self.scroll.frame.size.width * 2, self.scroll.frame.size.height);
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)gotoSampleClicked:(id)sender
{
    NSArray * subviews  = [NSArray arrayWithArray:self.scroll.subviews];
    NSLog(@"subviews is :%@",subviews);
    for (int i = 0; i<2;i++) {
        UIView *sampleView = (UIView *)[subviews objectAtIndex:i];
        NSLog(@"sampleView is :%@",sampleView);
        if (i == 0) {
            [sampleView setHidden:YES];
        }
        else
        {
            [sampleView setHidden:NO];
        }
        
    }
}

-(IBAction)gotoExampleClicked:(id)sender
{
    NSArray * subviews  = [NSArray arrayWithArray:self.scroll.subviews];
    for (int i = 0; i<2;i++) {
        UIView *sampleView = (UIView *)[subviews objectAtIndex:i];
        NSLog(@"sampleView is :%@",sampleView);
        if (i == 0) {
            [sampleView setHidden:NO];
        }
        else
        {
            [sampleView setHidden:YES];
        }
        
    }
}
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
