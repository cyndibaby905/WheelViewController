//
//  GNViewController.m
//  MBCAction
//
//  Created by Ahmed Ragab on 9/11/12.
//  Copyright (c) 2012 GoodNews4Me. All rights reserved.
//

#import "GNWheelViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface GNWheelViewController ()

@end

@implementation GNWheelViewController


- (GNWheelView *)wheelView{
    
    return (GNWheelView *)self.view;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated{
    
    self.wheelView.delegate = self;
    
    [self.wheelView reloadData];
    
    self.wheelView.idleDuration = 0;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return NO;
}

- (unsigned int)numberOfRowsOfWheelView:(GNWheelView *)wheelView{
    
    return 12;
}

- (UIView *)wheelView:(GNWheelView *)wheelView viewForRowAtIndex:(unsigned int)index{
    
    return [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"item.jpg"]] autorelease];
}

- (float)rowWidthInWheelView:(GNWheelView *)wheelView{
    
    return 300;
    
}

- (float)rowHeightInWheelView:(GNWheelView *)wheelView{
    
    return 83;
    
}

- (void)wheelView:(GNWheelView *)wheelView didSelectedRowAtIndex:(unsigned int)index{
    
   
}

- (BOOL)wheelView:(GNWheelView *)wheelView shouldEnterIdleStateForRowAtIndex:(unsigned int)index animated:(BOOL *)animated{
    
    return NO;
}

- (UIView *)wheelView:(GNWheelView *)wheelView idleStateViewForRowAtIndex:(unsigned int)index{
    
    return nil;
}

- (void)wheelView:(GNWheelView *)wheelView didStartIdleStateForRowAtIndex:(unsigned int)index{
    
    
}

- (void)dealloc{
    
    [super dealloc];
}

@end
