//
//  PTViewController.m
//  Paratrain
//
//  Created by Keyvan Fatehi on 6/1/13.
//  Copyright (c) 2013 Anonymous. All rights reserved.
//

#import "PTViewController.h"
#import "PTParatrain.h"

@interface PTViewController ()

@end

@implementation PTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadParatrain];
    [self.paratrain listen];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadParatrain
{
    if (self.paratrain) return;
    self.paratrain = [[PTParatrain alloc] init];
}

// For testing...

-(IBAction) startRecording
{
    [self.paratrain startRecording];
}
-(IBAction) stopRecording
{
    [self.paratrain stopRecording];
}
-(IBAction) playRecording
{
    [self.paratrain playRecording];
}
-(IBAction) stopPlaying
{
    [self.paratrain stopPlaying];
}

@end
