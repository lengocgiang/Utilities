//
//  UILabel+UILabelHeightDynamic.m
//  Utilities
//
//  Created by GiangLeNgoc on 6/4/15.
//  Copyright (c) 2015 GiangLeNgoc. All rights reserved.
//

#import "UILabel+UILabelHeightDynamic.h"

@implementation UILabel (UILabelHeightDynamic)

- (CGSize)sizeOfLabel
{
    // get current size
    CGSize constraint   = self.frame.size;
    // get current text
    NSString *string    = self.text;
    
    CGSize sizeOfLabel;
    
    CGSize boundingBox = [string boundingRectWithSize:constraint
                                              options:NSStringDrawingUsesLineFragmentOrigin
                                           attributes:@{NSFontAttributeName:self.font}
                                              context:nil].size;
    sizeOfLabel = CGSizeMake(ceil(boundingBox.width), ceil(boundingBox.height));
    
    return sizeOfLabel;
    
}
@end
