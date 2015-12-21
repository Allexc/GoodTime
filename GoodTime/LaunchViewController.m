//
//  LaunchViewController.m
//  GoodTime
//
//  Created by Allen on 15/11/13.
//  Copyright © 2015年 Allen. All rights reserved.
//

#import "LaunchViewController.h"
#import "UIViewExt.h"
#import "Common.h"
@interface LaunchViewController ()
{
    NSMutableArray *array;
}
@end

@implementation LaunchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    imageView.image =[ UIImage imageNamed:@"Default"];
    
    [self.view addSubview:imageView];
    [self loadimg];

}

- (void)loadimg
{
    
    
    CGFloat width = kScreenWidth/4;
    CGFloat height = kScreenHeight/6;
    int x = 0, y = 0;
    for (int i = 0; i<25; i++) {
        UIImageView *image = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, width, height)];
        NSString *imgName = [NSString stringWithFormat:@"%i@2x.png",i+1];
        image.image = [UIImage imageNamed:imgName];
        [self.view addSubview:image];
        if (i <= 3) {
            y= 0 ;
            x = i*width;
            
        }
        else if (i<=7)
        {
            x = 3* width;
            y = (i-3)*height;
        }
        else if (i<=11)
        {
            y= kScreenHeight - height;
            x = (11-i)*width;
        }
        else if (i < 16)
        {
            x=0;
            y = (16-i)*height;
        }
        else if (i <18)
        {
            x = (i-15)*width;
            y = height;
        }
        else if (i<21)
        {
            x = 2*width;
            y = (i-16)*height;
        }
        else if(i<24)
        {
            x = width;
            y = (25-i)*height;
            
        }
            
            
        image.origin = CGPointMake(x, y);
        [array addObject:image];

    }
    
   



}

- (void)starAni
{
    [UIView animateWithDuration:0.2 animations:^{
        
    }]
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
