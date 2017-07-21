//
//  EaseBubbleViewImageView.m
//  Pods
//
//  Created by zoulinlin on 2017/7/21.
//
//

#import "EaseBubbleViewImageView.h"

@implementation EaseBubbleViewImageView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void)layoutSubviews
{
    //            [_bubbleView.imageView.layer.sublayers makeObjectsPerformSelector:@selector(removeFromSuperlayer)];
    UIImage *image=[(UIImageView *)self.superview image];
    if (!image) {
        return;
    }
    if (!self.image) {
        return;
    }
    CGRect bounds=CGRectMake(-0.1, -0.1, self.bounds.size.width+0.2, self.bounds.size.height+0.2);

    
    CAShapeLayer * _maskLayer = [CAShapeLayer layer];
    _maskLayer.fillColor = [UIColor blackColor].CGColor;
    _maskLayer.strokeColor = [UIColor clearColor].CGColor;
    _maskLayer.frame = bounds;
    _maskLayer.contentsCenter = CGRectMake(0.5, 0.5, 0.1, 0.1);
    _maskLayer.contentsScale = [UIScreen mainScreen].scale;
    _maskLayer.contents =(id)image.CGImage;

    self.layer.mask=_maskLayer;
//    [_bubbleView.imageView.layer addSublayer:_contentLayer];
}

@end
