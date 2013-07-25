//
//  EVAuthorsViewController.m
//  Library
//
//  Created by Erik van der Neut on 5/12/13.
//  Copyright (c) 2013 Erik van der Neut. All rights reserved.
//

#import "EVAuthorsViewController.h"
#import "EVBooksViewController.h"

@interface EVAuthorsViewController ()

@end

@implementation EVAuthorsViewController

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
    
    self.title = @"Authors";
    
    NSString *dataFilePath = [[NSBundle mainBundle] pathForResource:@"Books" ofType:@"plist"];
    self.authors = [NSArray arrayWithContentsOfFile:dataFilePath];
    //    NSLog(@"authors: %@", self.authors);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Only one section in this table, so simply return value of 1:
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // One row in the table for each author:
    return [self.authors count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CellIdentifier];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];

    // Fetch author:
    NSDictionary *author = [self.authors objectAtIndex:[indexPath row]];
    
    // Configure the cell:
    [cell.textLabel setText:[author objectForKey:@"Author"]];
    
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
    EVBooksViewController *booksViewController = [[EVBooksViewController alloc] init];
    NSLog(@"Books View Controller > %@", booksViewController);
    
    // Fetch and set the author for the selected books view:
    NSDictionary *author = [self.authors objectAtIndex:[indexPath row]];
    [booksViewController setAuthor:[author objectForKey:@"Author"]];
    NSLog(@"Author > %@", booksViewController.author);
    
    // Push view controller on the navigation stack:
    NSLog(@"Navigation Controller > %@", self.navigationController);
    [self.navigationController pushViewController:booksViewController animated:YES];
}

@end
