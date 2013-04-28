//
//  EVViewController.m
//  Table Views
//
//  Created by Erik van der Neut on 4/25/13.
//  Copyright (c) 2013 Erik van der Neut. All rights reserved.
//

#import "EVViewController.h"

@interface EVViewController ()

@end

@implementation EVViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.fruits = @[@"Apple", @"Pineapple", @"Orange", @"Banana", @"Pear", @"Kiwi", @"Strawberry", @"Mango", @"Walnut", @"Apricot", @"Tomato", @"Almond", @"Date", @"Melon", @"Water Melon", @"Lemon", @"Blackberry", @"Coconut", @"Fig", @"Passionfruit", @"Star Fruit", @"Leechee", @"Durian"];
    
    self.alphabetizedFruits = [self alphabetizeFruits:self.fruits];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    NSArray *keys = [self.alphabetizedFruits allKeys];
    return [keys count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.fruits ? [self.fruits count] : 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Declare static string, so compiler always uses same one when this method is called:
    static NSString *CellIdentifier = @"Cell Identifier";
    
    // Tell table what class to use to instantiate a new table view cell:
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CellIdentifier];
    
    // Mark cell for reuse to minimize memory usage and processing power needed:
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Populate the table view cell with fruit data:
    NSString *fruit = [self.fruits objectAtIndex:[indexPath row]];
    [cell.textLabel setText:fruit];
    
    return cell;
}

- (NSDictionary *)alphabetizeFruits:(NSArray *)fruits
{
    NSMutableDictionary *buffer = [[NSMutableDictionary alloc] init];
    
    // Put fruits in sections:
    NSInteger length = fruits ? [fruits count] : 0;
    for (int i = 0; i < length; i++)
    {
        NSString *fruit = [fruits objectAtIndex:i];
        NSString *firstLetter = [[fruit substringToIndex:1] uppercaseString];
        
        if ([buffer objectForKey:firstLetter])
        {
            [(NSMutableArray *)[buffer objectForKey:firstLetter] addObject:fruit];
        }
        else
        {
            NSMutableArray *mutableArray = [[NSMutableArray alloc] initWithObjects:fruit, nil];
            [buffer setObject:mutableArray forKey:firstLetter];
        }
    }
    
    // Sort the fruits in each section:
    NSArray *keys = [buffer allKeys];
    length = keys ? [keys count] : 0;
    for (int i = 0; i < length; i++)
    {
        NSString *key = [keys objectAtIndex:i];
        [(NSMutableArray *)[buffer objectForKey:key] sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    }
    
    NSDictionary *result = [NSDictionary dictionaryWithDictionary:buffer];
    return result;
}

@end
