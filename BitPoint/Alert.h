//
//  Alert.h
//  Nextel
//
//  Created by Irfan Gul on 17/08/2015.
//  Copyright (c) 2015 10Pearls. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^doneAlertBlock)(void);
typedef void(^cancelAlertBlock)(void);

@interface Alert : NSObject

@property (copy) doneAlertBlock doneBlock;
@property (copy) cancelAlertBlock cancelBlock;

+ (void)showAlertWithTitle:(NSString *)title andMessage:(NSString *)message;
+ (void)showAlertWithMessage:(NSString *)message;
+ (Alert *)showAlertWithTitle:(NSString *)title message:(NSString *)message doneButton:(NSString *)doneText cancelButton:(NSString *)cancelText onDone:(doneAlertBlock)doneBlock onCancel:(cancelAlertBlock) cancelBlock;

@end
