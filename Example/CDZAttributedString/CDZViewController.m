//
//  CDZViewController.m
//  CDZAttributedString
//
//  Created by chenzheng on 12/22/2017.
//  Copyright (c) 2017 chenzheng. All rights reserved.
//

#import "CDZViewController.h"
#import <CDZAttributedString/CDZAttributedString.h>

@interface CDZViewController ()
@property (nonatomic, weak) IBOutlet UILabel* label;
@end

@implementation CDZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CDZAttributedString* str = [[CDZAttributedString alloc]init];
    str[0].text = @"第一段文字";
    str[0].textColor = [UIColor brownColor];
    str[0].font = [UIFont systemFontOfSize:15];
    str[1].text = @"第二段文字";
    str[1].textColor = [UIColor blueColor];
    str[1].font = [UIFont boldSystemFontOfSize:20];
    self.label.attributedText = [str attributedString];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
