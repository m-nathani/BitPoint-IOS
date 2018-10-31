//  Created on 10/26/18.

@import UIKit;
#import "Font.h"

@implementation Font

+(UIFont*)heading{
    return [UIFont fontWithName:LIGHT_FONT size:38];
}

+(UIFont*)medium{
    return [UIFont fontWithName:LIGHT_FONT size:30];
}

+(UIFont*)normal{
    return [UIFont fontWithName:REGULAR_FONT size:20];
}

+(UIFont*)button{
    return [UIFont fontWithName:REGULAR_FONT size:17];
}

+(UIFont*)smallFont{
    return [UIFont fontWithName:LIGHT_FONT size:13];
}

+ (CGFloat)getHeight:(NSString*)text andFont:(UIFont *)font andWidth:(int)width {
    NSAttributedString *attributedText;
    CGSize boundingBox;
    
    CGSize maximumSize = CGSizeMake(width, 99999);
    
    attributedText = [[NSAttributedString alloc] initWithString:text attributes:@{NSFontAttributeName : font}];
    
    NSRange range = NSMakeRange(0, [attributedText length]);
    NSDictionary *attributes = [attributedText attributesAtIndex:0 effectiveRange:&range];
    
    boundingBox = [text boundingRectWithSize:maximumSize
                                     options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin
                                  attributes:attributes
                                     context:nil].size;
    
    CGSize size = CGSizeMake(ceil(boundingBox.width), ceil(boundingBox.height));
    
    return size.height;

}

@end
