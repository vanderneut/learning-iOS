//
//  EVBooksViewController.m
//  Library
//
//  Created by Erik van der Neut on 5/12/13.
//  Copyright (c) 2013 Erik van der Neut. All rights reserved.
//

#import "EVBooksViewController.h"

@interface EVBooksViewController ()
@property NSArray *books;
@end

@implementation EVBooksViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (void)setAuthor:(NSString *)author
{
    if (_author != author)
    {
        _author = author;
        
        NSString *dataFilePath = [[NSBundle mainBundle] pathForResource:@"Books" ofType:@"plist"];
        NSArray *authors = [NSArray arrayWithContentsOfFile:dataFilePath];
        int authorsCount = [authors count];
        for (int i = 0; i < authorsCount; i++)
        {
            NSDictionary *authorDictionary = [authors objectAtIndex:i];
            NSString *tempAuthor = [authorDictionary objectForKey:@"Author"];
            if ([tempAuthor isEqualToString:_author])
            {
                self.title = [NSString stringWithFormat:@"%@'s Books", _author];
                self.books = [authorDictionary objectForKey:@"Books"];
                NSLog(@"%@:%@", self.title, self.books);
            }
        }
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Only ever one section:
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // One row per book:
    return [self.books count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CellIdentifier];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Fetch book:
    NSDictionary *book = [self.books objectAtIndex:[indexPath row]];
    
    // Configure the cell:
    [cell.textLabel setText:[book objectForKey:@"Title"]];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Initialize book cover view controller:
    EVBookCoverViewController *bookCoverViewController = [[EVBookCoverViewController alloc] init];

    // Fetch and set book cover:
    NSDictionary *book = [self.books objectAtIndex:[indexPath row]];
    UIImage *bookCover = [UIImage imageNamed:[book objectForKey:@"Cover"]];
    [bookCoverViewController setBookCover:bookCover];
    
    // Push view controller onto navigation stack:
    [self.navigationController pushViewController:bookCoverViewController animated:YES];
}

@end
