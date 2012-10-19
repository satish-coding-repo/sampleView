//
//  ViewController.h
//  sampleView
//
//  Created by Sailaja Kamisetty on 09/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIScrollViewDelegate>
{
    IBOutlet UIView *sample;
    IBOutlet UIView *example;
    IBOutlet UIView *next;
    IBOutlet UIScrollView *scroll;
//    UIView *exampleView;
}
@property(nonatomic,retain)UIView *sample;
@property(nonatomic,retain)UIView *example;
@property(nonatomic,retain)UIView *next;
@property(nonatomic,retain)UIScrollView *scroll;
@end
