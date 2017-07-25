#import "CLNCoolViewCell.h"

@implementation CLNCoolViewCell

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint currLocation = [touch locationInView:nil];
    CGPoint prevLocation = [touch previousLocationInView:nil];
    
    [self setFrame:CGRectOffset([self frame],
                                currLocation.x - prevLocation.x,
                                currLocation.y - prevLocation.y)];
}

@end
