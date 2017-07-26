#import "ReadingListViewController.h"
#import "ViewBookController.h"
#import "ReadingList-Swift.h"


@interface ReadingListViewController ()
@property (strong, nonatomic) ReadingListStore *store;
@property (strong, nonatomic) ReadingList *readingList;
@end

@implementation ReadingListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.store = [[ReadingListStore alloc] init:@"BooksAndAuthors"];
    self.readingList = [self.store fetchReadingList];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ViewBookController *controller = segue.destinationViewController;
    NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
    Book *book = self.readingList.books[indexPath.row];
    
    controller.book = book;
}


// MARK: - Unwind Segues

- (IBAction)doneEditingBook:(UIStoryboardSegue *)segue {
    [self.tableView reloadData];
    [self.store saveReadingList:self.readingList];
}

// MARK: - Data Source Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.readingList.books.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BookSummary"];
    
    Book *book = self.readingList.books[indexPath.row];
    cell.textLabel.text = book.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@  %@", book.year, book.author.fullName];
    
    return cell;
}

@end
