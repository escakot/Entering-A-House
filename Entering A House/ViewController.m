//
//  ViewController.m
//  Entering A House
//
//  Created by Errol Cheong on 2017-07-05.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSString* buttonTitle;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Exit"
                                                                              style:UIBarButtonItemStylePlain
                                                                             target:self
                                                                             action:@selector(exitHouse:)];
    
    if ([[self title] isEqualToString:@"Front Door"]){
        self.title = @"Front Door";
    }
}

- (void) exitHouse:(id)sender{
    [self.navigationController popToRootViewControllerAnimated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ViewController *dvc = segue.destinationViewController;
    [dvc setTitle:self.buttonTitle];
    
    
}
- (IBAction)buttonPressed:(UIButton *)sender {
    self.buttonTitle = sender.currentTitle;
}

@end
