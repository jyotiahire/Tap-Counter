//
//  ViewController.m
//  JATapped
//
//  Created by Student P_07 on 12/10/16.
//  Copyright © 2016 jyoti. All rights reserved.
//

#import "ViewController.h"
#define kHeightOfUIelement 60.0
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self calculateScreenHeightAndWidth];
    [self addResetButton];
    [self addTapButton];
    [self addOuputLable];
    [self addNewLabel];
    [self handleReset];
    [self handleTap];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)calculateScreenHeightAndWidth{
    
    Screenwidth =[[UIScreen mainScreen]bounds].size.width;
    Screenheight =[[UIScreen mainScreen]bounds].size.height;
}
-(void)addResetButton{
    
    
    
    Resetbutton=[[UIButton alloc]initWithFrame:CGRectMake(0, 650, Screenheight-300, 100)];
    [Resetbutton setBackgroundColor:[UIColor yellowColor]];
    [Resetbutton setTitle:@"Reset" forState:UIControlStateNormal];
    [Resetbutton setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    
    [Resetbutton addTarget:self action:@selector(handleReset) forControlEvents:(UIControlEventTouchUpInside)];
    
    [self.view addSubview:Resetbutton];
    
}
-(void)addTapButton{
    
    Tapbutton=[[UIButton alloc]initWithFrame:CGRectMake(0,250,Screenwidth, Screenwidth-120)];
    [Tapbutton setTitle:@"" forState:UIControlStateNormal];
    [Tapbutton addTarget:self action:@selector(handleTap) forControlEvents:(UIControlEventTouchUpInside)];
    
    [self.view addSubview:Tapbutton];
}
-(void)addOuputLable{
    
    Outputlable=[[UILabel alloc]initWithFrame:CGRectMake(0,250,Screenwidth,Screenwidth-120)];
    [Outputlable setBackgroundColor:[UIColor whiteColor]];
    [Outputlable setText:@"0"];
    [Outputlable setFont:[UIFont systemFontOfSize:80]];
    [Outputlable setTextAlignment:(NSTextAlignmentCenter)];
    [self.view addSubview:Outputlable];
}
-(void)addNewLabel{
    Newlable = [[UILabel alloc]initWithFrame:CGRectMake(100, 40, Screenwidth-200,kHeightOfUIelement)];
    [Newlable setBackgroundColor:[UIColor lightGrayColor]];
    [Newlable setTextAlignment:NSTextAlignmentCenter];
    [Newlable setTextColor:[UIColor whiteColor]];
    [Newlable setFont:[UIFont systemFontOfSize:30]];
    [self.view addSubview:Newlable];
}

-(void)handleTap{
    
    int value=Outputlable.text.intValue;
    value = value + 1;
    NSString *newValueString=[NSString stringWithFormat:@"%d",value];
    Outputlable.text=newValueString;
    
}
-(void)handleReset{
    Newlable.text=[NSString stringWithFormat:@"%d",Outputlable.text.intValue];
    Outputlable.text=@"0";
}


@end
