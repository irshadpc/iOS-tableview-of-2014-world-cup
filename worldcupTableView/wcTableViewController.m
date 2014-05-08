//
//  wcTableViewController.m
//  worldcupTableView
//
//  Created by CHEN BO on 8/5/14.
//  Copyright (c) 2014 @air_bob. All rights reserved.
//

#import "wcTableViewController.h"

@interface wcTableViewController (){
    NSArray* grpArr;
    NSArray* tableArr;
}

@end

@implementation wcTableViewController

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
    grpArr = [[NSArray alloc]initWithObjects:@"Group A",@"Group B",@"Group C",@"Group D",@"Group E",@"Group F",@"Group G",@"Group H", nil];
    
    NSArray* aArr = [[NSArray alloc]initWithObjects:@"BRAZIL",@"CROATIA",@"MEXICO",@"CAMEROON", nil];
    NSArray* bArr = [[NSArray alloc]initWithObjects:@"SPAIN",@"NETHERLAND",@"CHILE",@"AUSTRALIA", nil];
    NSArray* cArr = [[NSArray alloc]initWithObjects:@"COLOMBIA",@"GREECE",@"CÔTE D'IVOIRE",@"JAPAN", nil];
    NSArray* dArr = [[NSArray alloc]initWithObjects:@"URUGUAY",@"COSTA RICA",@"ENGLAND",@"ITALY", nil];
    NSArray* eArr = [[NSArray alloc]initWithObjects:@"SWITZERLAND",@"ECUADOR",@"FRANCE",@"HONDURAS", nil];
    NSArray* fArr = [[NSArray alloc]initWithObjects:@"ARGENTINA",@"BOSNIA AND HERZEGOVINA",@"IRAN",@"NIGERIA", nil];
    NSArray* gArr = [[NSArray alloc]initWithObjects:@"GERMANY",@"PORTUGAL",@"GHANA",@"USA", nil];
    NSArray* hArr = [[NSArray alloc]initWithObjects:@"BELGIUM",@"ALGERIA",@"RUSSIA",@"KOREA REPUBLIC", nil];
    
    tableArr = [NSArray arrayWithObjects:aArr,bArr,cArr,dArr,eArr,fArr,gArr,hArr, nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [grpArr count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    
    return  [grpArr objectAtIndex:section];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return  [[tableArr objectAtIndex:section] count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"normalCell"];
    
    NSString *tempCountry = [[tableArr objectAtIndex:[indexPath section]] objectAtIndex:[indexPath row]];
    UIImageView *imageView = (UIImageView *)[[cell contentView] viewWithTag:1];
    imageView.image=[UIImage imageNamed:tempCountry];
    UILabel *countryLabel = (UILabel*)[[cell contentView] viewWithTag:2];
    countryLabel.text = tempCountry;
    

    return cell;
}

//hide status bar
- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end
