#import "CLNCoolViewCell.h"

const CGSize CLNTextInset = { 8.0, 8.0 };

@interface CLNCoolViewCell ()
@property (class, nonatomic, readonly) NSDictionary *textAttributes;
@property (nonatomic) BOOL highlighted;
@end


@implementation CLNCoolViewCell

// TODO: Override initWithCoder:

- (instancetype)initWithFrame:(CGRect)frame {
    if (!(self = [super initWithFrame:frame])) return nil;
    
    self.layer.borderWidth = 2.0;
    self.layer.borderColor = UIColor.whiteColor.CGColor;
    
    self.layer.cornerRadius = 8.0;
    self.layer.masksToBounds = YES;
    
    [self configureGestureRecognizers];
    
    return self;
}


- (void)configureGestureRecognizers {
    UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(bounce)];
    recognizer.numberOfTapsRequired = 2; // Double-tap
    [self addGestureRecognizer:recognizer];
}

- (void)setHighlighted:(BOOL)highlighted {
    _highlighted = highlighted;
    self.alpha = highlighted ? 0.5 : 1.0;
}

// MARK: - Animation

- (void)bounce {
    [self animateBounceWithDuration:1.0 size:CGSizeMake(120.0, 240.0)];
}

- (void)configureBounceWithSize:(CGSize)size {
    [UIView setAnimationRepeatCount:3.5];
    [UIView setAnimationRepeatAutoreverses:YES];
    CGAffineTransform transform = CGAffineTransformMakeTranslation(size.width, size.height);
    self.transform = CGAffineTransformRotate(transform, M_PI_2);
}

- (void)configureEndBounceWithDuration:(NSTimeInterval)duration {
    [UIView animateWithDuration:duration animations:^{
        self.transform = CGAffineTransformIdentity;
    }];
}

- (void)animateBounceWithDuration:(NSTimeInterval)duration size:(CGSize)size {
    [UIView animateWithDuration:duration
                     animations: ^{ [self configureBounceWithSize:size]; }
     completion: ^(BOOL finished) { [self configureEndBounceWithDuration:duration]; }];
    
}

// MARK: - Resizing

+ (NSDictionary *)textAttributes {
    return @{NSFontAttributeName: [UIFont boldSystemFontOfSize:17.0],
             NSForegroundColorAttributeName: UIColor.whiteColor};
}

- (CGSize)sizeThatFits:(CGSize)size {
    CGSize newSize = [self.text sizeWithAttributes:self.class.textAttributes];
    newSize.height += CLNTextInset.height * 2;
    newSize.width += CLNTextInset.width * 2;
    return newSize;
}

// MARK: - Custom Drawing

- (void)drawRect:(CGRect)rect {
    [self.text drawAtPoint:CGPointMake(CLNTextInset.width, CLNTextInset.height)
            withAttributes:self.class.textAttributes];
}


// MARK: - UIResponder Methods

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.highlighted = YES;
    [self.superview bringSubviewToFront:self];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    CGPoint currLocation = [touches.anyObject locationInView:nil];
    CGPoint prevLocation = [touches.anyObject previousLocationInView:nil];
    self.frame = CGRectOffset(self.frame, currLocation.x - prevLocation.x, currLocation.y - prevLocation.y);
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    self.highlighted = NO;
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    self.highlighted = NO;
}

@end
