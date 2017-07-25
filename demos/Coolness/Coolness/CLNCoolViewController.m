#import "CLNCoolViewController.h"
#import "CLNCoolViewCell.h"

@interface CLNCoolViewController ()
@property (strong, nonatomic) UITextField *textField;
@property (strong, nonatomic) UIView *contentView;
@end

@implementation CLNCoolViewController

- (void)addCoolViewCell {
    CLNCoolViewCell *cell = [[CLNCoolViewCell alloc] initWithFrame:CGRectZero];
    cell.text = self.textField.text;
    [cell sizeToFit];
    [self.contentView addSubview:cell];
}

- (void)loadView {
    CGRect screenRect = UIScreen.mainScreen.bounds;
    self.view = [[UIView alloc] initWithFrame:screenRect];
    self.view.backgroundColor = UIColor.brownColor;
    
    CGRect accessoryRect;
    CGRect contentRect;
    CGRectDivide(screenRect, &accessoryRect, &contentRect, 90.0, CGRectMinYEdge);
    
    UIView *accessoryView = [[UIView alloc] initWithFrame:accessoryRect];
    self.contentView = [[UIView alloc] initWithFrame:contentRect];
    self.contentView.clipsToBounds = YES;
    
    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(15.0, 35.0, 260.0, 30.0)];
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    [accessoryView addSubview:self.textField];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"Add" forState:UIControlStateNormal];
    [button sizeToFit];
    button.frame = CGRectOffset(button.frame, 285.0, 35.0);
    [accessoryView addSubview:button];
    
    [button addTarget:self action:@selector(addCoolViewCell) forControlEvents:UIControlEventTouchUpInside];
    
    
    CLNCoolViewCell *subview1 = [[CLNCoolViewCell alloc] initWithFrame:CGRectMake(20.0, 20.0, 0.0, 0.0)];
    CLNCoolViewCell *subview2 = [[CLNCoolViewCell alloc] initWithFrame:CGRectMake(40.0, 70.0, 0.0, 0.0)];
    
    subview1.text = @"Hello World!";
    subview2.text = @"Cool View Cells Rock!!!";
    
    [subview1 sizeToFit];
    [subview2 sizeToFit];
    
    [self.view addSubview:accessoryView];
    [self.view addSubview:self.contentView];
    
    [self.contentView addSubview:subview1];
    [self.contentView addSubview:subview2];
    
    accessoryView.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.8];
    self.contentView.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.6];
    subview1.backgroundColor = UIColor.purpleColor;
    subview2.backgroundColor = UIColor.orangeColor;
}

@end
