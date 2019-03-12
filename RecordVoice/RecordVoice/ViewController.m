//
//  ViewController.m
//  RecordVoice
//
//  Created by huatu on 2019/3/8.
//  Copyright © 2019 huatu. All rights reserved.
//

#import "ViewController.h"
#import "RecordVoice-Swift.h"
#import <AFNetworking.h>
#import <UIImageView+WebCache.h>


@interface ViewController ()

- (IBAction)skipLoginVc:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor redColor];
    
    // 重新改变控制器的颜色
    self.view.backgroundColor = [UIColor blueColor];
    
    
    // 我是主分支添加的注释
    self.view.backgroundColor = [UIColor cyanColor];
    
    
    // 添加一个oneBrach分支代码
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    // 我是one开发者
    self.view.backgroundColor = [UIColor cyanColor];
}


- (IBAction)skipLoginVc:(UIButton *)sender {
    
    LoginViewController *loginVc = [[LoginViewController alloc] init];
    
    [self presentViewController:loginVc animated:YES completion:nil];
    
}
@end
