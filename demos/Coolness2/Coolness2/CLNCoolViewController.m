#import "CLNCoolViewController.h"
#import "CLNCoolViewCell.h"

@interface CLNCoolViewController () <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UIView *contentView;
@end

@implementation CLNCoolViewController

// MARK: - Action Methods
- (IBAction)addCoolViewCell {
    CLNCoolViewCell *cell = [[CLNCoolViewCell alloc] initWithFrame:CGRectZero];
    cell.text = self.textField.text;
    [cell sizeToFit];
    [self.contentView addSubview:cell];
}


// MARK: - UITextFieldDelegate Protocol Methods

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}


// MARK: - Loading Views (Disabled Methods)

- (void)loadView2 {
    [NSBundle.mainBundle loadNibNamed:@"CoolStuff" owner:self options:nil];
}

- (void)loadView1 {
    NSArray *topLevelObjs = [NSBundle.mainBundle loadNibNamed:@"CoolStuff" owner:nil options:nil];
    self.view = topLevelObjs.firstObject;
}

@end
