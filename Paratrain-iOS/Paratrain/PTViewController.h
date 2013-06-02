//
//  PTViewController.h
//  Paratrain
//
//  Created by Keyvan Fatehi on 6/1/13.
//  Copyright (c) 2013 Anonymous. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PTParatrain.h"

@interface PTViewController : UIViewController
@property PTParatrain *paratrain;
- (void) loadParatrain;
@end
