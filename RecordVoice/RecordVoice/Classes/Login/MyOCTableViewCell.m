//
//  MyOCTableViewCell.m
//  RecordVoice
//
//  Created by huatu on 2019/3/11.
//  Copyright © 2019 huatu. All rights reserved.
//

#import "MyOCTableViewCell.h"

@implementation MyOCTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}


+ (instancetype)cellWithTableView:(UITableView *)tableView {
    
    NSString *cellId = @"cellId";
    
    MyOCTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([MyOCTableViewCell class]) owner:nil options:nil] lastObject];
    }
    return cell;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
