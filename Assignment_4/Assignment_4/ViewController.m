//
//  ViewController.m
//  Assignment_4
//
//  Created by Asha  on 3/19/19.
//  Copyright © 2019 Asha . All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    isDecimal=false;
    resultValue=0;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setResultWithNumber:(int)theNumber{
    
    if(!isDecimal){
        displayNumber *= 10;
        displayNumber += theNumber;
        result.text = [NSString stringWithFormat:@"%.0f",displayNumber];
    }
    else{
        result.text = [result.text stringByAppendingString:[NSString stringWithFormat:@"%d", theNumber]];
    }
    displayNumber = [result.text floatValue];
}

-(void)operationWithNumber:(int)theNumber{
    
    isDecimal = false;
    
    if(resultValue == 0){
        resultValue = displayNumber;
    }
    
    else{
        result.text = [NSString stringWithFormat:@"%.2f",resultValue];
        switch (operation) {
            case 1:
                resultValue += displayNumber;
                break;
            case 2:
                resultValue -= displayNumber;
                break;
            case 3:
                resultValue = displayNumber*resultValue;
                break;
            case 4:
                resultValue /= displayNumber;
                break;
                
            default:
                break;
        }
    }
    operation = theNumber;
    displayNumber = 0;
    
}




- (IBAction)divide:(id)sender
{
    if(resultValue != 0){
        [self operationWithNumber:operation];
        result.text = [NSString stringWithFormat:@"%.2f",resultValue];
        displayNumber = [result.text floatValue];
        resultValue = 0;
    }
    [self operationWithNumber:4];
}

- (IBAction)multiply:(id)sender
{
    if(resultValue != 0){
        [self operationWithNumber:operation];
        result.text = [NSString stringWithFormat:@"%.2f",resultValue];
        displayNumber = [result.text floatValue];
        resultValue = 0;
    }
    [self operationWithNumber:3];
}

- (IBAction)minus:(id)sender
{
    if(resultValue != 0){
        [self operationWithNumber:operation];
        result.text = [NSString stringWithFormat:@"%.2f",resultValue];
        displayNumber = [result.text floatValue];
        resultValue = 0;
    }
    [self operationWithNumber:2];
}

- (IBAction)plus:(id)sender {
    if(resultValue != 0){
        [self operationWithNumber:operation];
        result.text = [NSString stringWithFormat:@"%.2f",resultValue];
        displayNumber = [result.text floatValue];
        resultValue = 0;
    }
    [self operationWithNumber:1];
}
-(IBAction)dot:(id)sender {
    isDecimal = true;
    NSRange range = [result.text rangeOfString:@"."];
    if (range.location ==NSNotFound){
        result.text = [result.text stringByAppendingString:@"."];
    }
}

- (IBAction)equals:(id)sender {
    
    [self operationWithNumber:operation];
    result.text = [NSString stringWithFormat:@"%.2f",resultValue];
    displayNumber = [result.text floatValue];
    resultValue = 0;
}



- (IBAction)clear:(id)sender {
    operation = 0;
    resultValue = 0;
    displayNumber = 0;
    isDecimal = false;
    result.text = [NSString stringWithFormat:@"%i",0];
}

- (IBAction)seven:(id)sender {
    [self setResultWithNumber:7];
}

- (IBAction)eight:(id)sender {
    [self setResultWithNumber:8];
}

- (IBAction)nine:(id)sender {
    [self setResultWithNumber:9];
}


- (IBAction)four:(id)sender {
    [self setResultWithNumber:4];
}

- (IBAction)five:(id)sender {
    [self setResultWithNumber:5];
}

- (IBAction)six:(id)sender {
    [self setResultWithNumber:6];
}



- (IBAction)one:(id)sender {
    [self setResultWithNumber:1];
}

- (IBAction)two:(id)sender {
    [self setResultWithNumber:2];
}

- (IBAction)three:(id)sender {
    [self setResultWithNumber:3];
}


- (IBAction)zero:(id)sender {
    [self setResultWithNumber:0];
}


@end
