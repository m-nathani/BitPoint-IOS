//
//  Alert.m
//  Nextel
//
//  Created by Irfan Gul on 17/08/2015.
//  Copyright (c) 2015 10Pearls. All rights reserved.
//

#import "Alert.h"

#define OVERLAY_TAG 1001

static Alert *alert = nil;

@interface Alert ()<UIAlertViewDelegate>

@end

@implementation Alert

+(void)showAlertWithTitle:(NSString *)title andMessage:(NSString *)message
{
    if(title.length <= 0 && message.length <= 0)
        return ;
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:title message:message delegate:nil cancelButtonTitle:NSLocalizedString(TITLE_OK,@"") otherButtonTitles:nil, nil];
    [alert show];
}

+(void)showAlertWithMessage:(NSString *)message
{
    [Alert showAlertWithTitle:@"" andMessage:message];
}

+(Alert *)showAlertWithTitle:(NSString *)title message:(NSString *)message doneButton:(NSString *)doneText cancelButton:(NSString *)cancelText onDone:(doneAlertBlock)doneBlock onCancel:(cancelAlertBlock) cancelBlock
{
    if(title.length <= 0 && message.length <= 0)
        return nil;
    
    alert = [Alert new];
    
    //if no button then show default ok button
    if(cancelText == nil && doneText == nil)
        cancelText = NSLocalizedString(@"OK",@"");
    
    alert.cancelBlock = cancelBlock;
    alert.doneBlock = doneBlock;
    
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:title message:message delegate:alert cancelButtonTitle:cancelText otherButtonTitles:doneText, nil];
    [alertView show];
    
    return alert;
}

//+(void) cancelAllAlerts{
//    self.cancelBlock();
//}

#pragma mark - UIAlertViewDelegate

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    dispatch_async(dispatch_get_main_queue(), ^{
        if(buttonIndex == 0 && self.cancelBlock)
            self.cancelBlock();
        else if (buttonIndex == 1 && self.doneBlock)
            self.doneBlock();
        
        alert = nil;
    });
}


@end
