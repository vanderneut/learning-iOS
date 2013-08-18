//
//  EVAllBooksViewController.m
//  Tabbed Library
//
//  Created by Erik van der Neut on 18/08/13.
//  Copyright (c) 2013 Erik van der Neut. All rights reserved.
//

#import "EVAllBooksViewController.h"

@interface EVAllBooksViewController ()
@property NSArray *books;
@end

@implementation EVAllBooksViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self)
    {
        // Set title so it's visible before the tab is even selected:
        self.title = @"Books";
        
        // Also set the tab bar item icon image:
 //       self.tabBarItem = [[UITabBarItem alloc] initWithTitle:[self title] image:[UIImage imageNamed:@"icon-books"] tag:1];
        
        [self.tabBarItem setFinishedSelectedImage:[UIImage imageNamed:@"icon-books"] withFinishedUnselectedImage:[UIImage imageNamed:@"icon-books"]];
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
    
    // Set title:
    self.title = @"Books";
    
    // Extract books:
    self.books = [self extractBooks];
}

- (NSArray *) extractBooks
{
    // Load authors:
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Books" ofType:@"plist"];
    NSArray *authors = [NSArray arrayWithContentsOfFile:filePath];
    NSMutableArray *buffer = [[NSMutableArray alloc] init];
    for (int i = 0; i < [authors count]; i++)
    {
        // Add books to the buffer:
        NSDictionary *author = [authors objectAtIndex:i];
        [buffer addObjectsFromArray:[author objectForKey:@"Books"]];
    }
    
    // Sort books alphabetically:
    NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"Title" ascending:YES];
    NSArray *result = [buffer sortedArrayUsingDescriptors:@[sortDescriptor]];
    return result;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.books count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell Identifier";
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CellIdentifier];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Fetch book:
    NSDictionary *book = [self.books objectAtIndex:[indexPath row]];
    
    // Configure cell:
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
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
