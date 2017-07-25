#import "CLNCoolViewController.h"
#import "CLNCoolViewCell.h"

@implementation CLNCoolViewController

- (void)loadView {
    CGRect frameRect = [[UIScreen mainScreen] bounds];
    [self setView:[[UIView alloc] initWithFrame:frameRect]];
    
    self.view.backgroundColor = UIColor.brownColor;
    
    [self.view setBackgroundColor:[UIColor brownColor]];
    
    UIView *subview1 = [[CLNCoolViewCell alloc] initWithFrame:CGRectMake(20.0, 60.0, 80.0, 30.0)];
    UIView *subview2 = [[CLNCoolViewCell alloc] initWithFrame:CGRectMake(40.0, 100.0, 80.0, 30.0)];
    
    [[self view] addSubview:subview1];
    [[self view] addSubview:subview2];
    
    [subview1 setBackgroundColor:[UIColor purpleColor]];
    [subview2 setBackgroundColor:[UIColor orangeColor]];
}

@end
