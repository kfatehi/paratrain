//
//  PTParatrain.m
//  Paratrain
//
//  Created by Keyvan Fatehi on 6/1/13.
//  Copyright (c) 2013 Anonymous. All rights reserved.
//

#import "PTParatrain.h"
#import <AVFoundation/AVFoundation.h>

@implementation PTParatrain

// Start capturing audio
- (void) listen
{
    NSLog(@"Paratrain is creating a capture session");
    AVCaptureSession *captureSession = [[AVCaptureSession alloc] init];
    AVCaptureDevice *audioCaptureDevice = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeAudio];
    NSError *error = nil;
    AVCaptureDeviceInput *audioInput = [AVCaptureDeviceInput deviceInputWithDevice:audioCaptureDevice error:&error];
    if (audioInput) {
        [captureSession addInput:audioInput];
        [captureSession addOutput:self];
    }
    else {
        NSLog(@"Error: %@", error.localizedDescription);
    }
    
    NSLog(@"I will start the capture, should have connections");
    
    [captureSession startRunning];
    
    NSLog(@"started capture session...");
    
}
- (AVMediaType) connectionMediaTypes
{
    AVMediaTypeAudio
}
@end
