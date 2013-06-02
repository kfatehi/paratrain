//
//  PTParatrain.m
//  Paratrain
//
//  Created by Keyvan Fatehi on 6/1/13.
//  Copyright (c) 2013 Anonymous. All rights reserved.
//

#import "PTParatrain.h"

@implementation PTParatrain

// Start capturing audio
- (void) listen
{
    NSLog(@"Paratrain#listen");
    [self startRecording];
}

- (void) startRecording
{
    if (audioRecorder && audioRecorder.recording)
    {
        NSLog(@"Already recording");
        return;
    }
    
    recordEncoding = ENC_IMA4;
    NSLog(@"startRecording");
    audioRecorder = nil;
    
    // Init audio with record capability
    AVAudioSession *audioSession = [AVAudioSession sharedInstance];
    [audioSession setCategory:AVAudioSessionCategoryRecord error:nil];
    
    NSDictionary *recordSettings = @{
       AVEncoderAudioQualityKey:@(AVAudioQualityHigh),
       AVFormatIDKey:@(kAudioFormatAppleIMA4),
       AVSampleRateKey:@16000.0,
       AVNumberOfChannelsKey:@1
    };
    
    NSError *error = nil;
    audioRecorder = [[AVAudioRecorder alloc] initWithURL:self.tempFilePath
                                                 settings:recordSettings
                                                    error:&error];
    
    if ([audioRecorder prepareToRecord] == YES){
        [audioRecorder record];
    }else {
        int errorCode = CFSwapInt32HostToBig ([error code]);
        NSLog(@"Error: %@ [%4.4s])" , [error localizedDescription], (char*)&errorCode);
        
    }
    NSLog(@"recording");
    
}

-(void) stopRecording
{
    NSLog(@"stopRecording");
    [audioRecorder stop];
    NSLog(@"stopped");
}

-(void) playRecording
{
    NSLog(@"playRecording");
    // Init audio with playback capability
    AVAudioSession *audioSession = [AVAudioSession sharedInstance];
    [audioSession setCategory:AVAudioSessionCategoryPlayback error:nil];
    
    NSError *error;
    audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:self.tempFilePath
                                                         error:&error];
    audioPlayer.numberOfLoops = 0;
    [audioPlayer play];
    NSLog(@"playing");
}

-(void) stopPlaying
{
    NSLog(@"stopPlaying");
    [audioPlayer stop];
    NSLog(@"stopped");
}

- (NSURL*) tempFilePath
{
    NSURL *tmpDirURL = [NSURL fileURLWithPath:NSTemporaryDirectory() isDirectory:YES];
    return [[tmpDirURL URLByAppendingPathComponent:@"recording"] URLByAppendingPathExtension:@"ima4"];
}
@end
