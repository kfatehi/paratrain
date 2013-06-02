//
//  PTParatrain.h
//  Paratrain
//
//  Created by Keyvan Fatehi on 6/1/13.
//  Copyright (c) 2013 Anonymous. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface PTParatrain : AVCaptureOutput
- (void) listen;
- (AVMediaType) connectionMediaTypes;
@end
