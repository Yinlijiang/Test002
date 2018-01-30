//
//  ViewController.m
//  shanghaiPayType
//
//  Created by Mickey Yin on 2017/8/3.
//  Copyright © 2017年 Mickei Yin. All rights reserved.
//

#import "ViewController.h"
#import "payTableViewCell.h"


#define NW [UIScreen mainScreen].bounds.size.width
#define NH [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@property (nonatomic, strong) UITableView * payTableview;
@property (nonatomic, strong) UIView *headview;
@property (nonatomic, strong) NSMutableArray * DataArray;
@property (nonatomic, copy) NSString * shopname;
@property (nonatomic, copy) NSString * pricename;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor clearColor];
    
    _DataArray = [[NSMutableArray alloc]initWithObjects:@"AliPay",@"wachate",@"MoMo",@"nam4",@"nam4",@"nam4",@"nam4",@"nam4",@"nam4",@"nam4",@"nam4", nil];
    
    [self createHeadFox];
    [self createTabaleview];
}

- (void)createTabaleview
{
    _payTableview = [[UITableView alloc] initWithFrame:CGRectMake(NW*0.1, NH*0.3, NW*0.8, NH*0.8) style:UITableViewStylePlain];
//    _payTableview.backgroundColor = [UIColor blueColor];
    _payTableview.delegate = self;
    _payTableview.dataSource = self;
//    _payTableview.tableHeaderView = _headview;
    [self.view addSubview:_payTableview];
}

- (NSUInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return _DataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // NSLog(@"cellForRowAtIndexPath");
    static NSString *identifier = @"statushanghai";
    
    // 1.缓存中取
    payTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    // 2.创建
    if (cell == nil) {
        cell = [[payTableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
    }
    
    cell.backgroundColor = [UIColor orangeColor];
    
    if (indexPath.section == 0) {
        
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            cell.iconView.image = [UIImage imageNamed:@"pay1.jpg"];
            cell.nameLabel.text = _DataArray[indexPath.row];
    }
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 0.001;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.0001;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        return 50;
    }
    else {
        return 50;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row) {
        NSLog(@"点击的是第%ld行",(long)indexPath.row);
    }
    
//    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)createHeadFox
{
    _headview = [[UIView alloc] initWithFrame:CGRectMake(0, 0, NW*0.8, 80)];
    _headview.backgroundColor = [UIColor blueColor];
    
    UILabel* shopName = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, NW*0.8, 40)];
    shopName.text = _shopname;
    shopName.textAlignment = NSTextAlignmentCenter;
    
    UILabel* priceName = [[UILabel alloc]initWithFrame:CGRectMake(0, 50, NW*0.8, 30)];
    priceName.text = _pricename;
    priceName.textAlignment = NSTextAlignmentCenter;
    
    [_headview addSubview:shopName];
    [_headview addSubview:priceName];
}

- (void)createPayShangHai
{
    _shopname = @"自尊月卡2万金币";
    _pricename = @"10 元";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
