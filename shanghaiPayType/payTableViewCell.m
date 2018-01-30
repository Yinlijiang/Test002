//
//  payTableViewCell.m
//  payType
//
//  Created by Mickey Yin on 2017/4/27.
//  Copyright © 2017年 macpartyTestTest20170327. All rights reserved.
//

#import "payTableViewCell.h"

@implementation payTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        UIImageView *iconView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 30, 30)];
        
        [self.contentView addSubview:iconView];
        self.iconView = iconView;
        
        UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 10, 150, 30)];
        [self.contentView addSubview:nameLabel];
        self.nameLabel = nameLabel;
    }
    
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
