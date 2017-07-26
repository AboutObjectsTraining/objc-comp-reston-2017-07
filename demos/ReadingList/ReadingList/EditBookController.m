#import "EditBookController.h"
#import "ReadingList-Swift.h"

@interface EditBookController ()
@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UITextField *yearField;
@property (weak, nonatomic) IBOutlet UITextField *firstNameField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameField;
@end

@implementation EditBookController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.titleField.text = self.book.title;
    self.yearField.text = self.book.year;
    self.firstNameField.text = self.book.author.firstName;
    self.lastNameField.text = self.book.author.lastName;
}

- (void)updateBook {
    self.book.title = self.titleField.text;
    self.book.year = self.yearField.text;
    self.book.author.firstName = self.firstNameField.text;
    self.book.author.lastName = self.lastNameField.text;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"Done"]) {
        [self updateBook];
    }
}

@end
