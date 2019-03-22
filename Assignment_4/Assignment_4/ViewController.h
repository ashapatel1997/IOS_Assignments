//
//  ViewController.h
//  Assignment_4
//
//  Created by Asha  on 3/19/19.
//  Copyright © 2019 Asha . All rights reserved.
//

#import <UIKit/UIKit.h>
int operation;
double displayNumber;
double resultValue;
BOOL isDecimal;
@interface ViewController : UIViewController
{
    
    IBOutlet UILabel *result;
}
-(void) setResultWithNumber:(int)theNumber;
-(void) operationWithNumber:(int)theNumber;

- (IBAction)clear:(id)sender;

- (IBAction)seven:(id)sender;
- (IBAction)eight:(id)sender;
- (IBAction)nine:(id)sender;
- (IBAction)divide:(id)sender;

- (IBAction)four:(id)sender;
- (IBAction)five:(id)sender;
- (IBAction)six:(id)sender;
- (IBAction)multiply:(id)sender;

- (IBAction)one:(id)sender;
- (IBAction)two:(id)sender;
- (IBAction)three:(id)sender;
- (IBAction)minus:(id)sender;

- (IBAction)zero:(id)sender;
- (IBAction)dot:(id)sender;
- (IBAction)equals:(id)sender;
- (IBAction)plus:(id)sender;

@end

