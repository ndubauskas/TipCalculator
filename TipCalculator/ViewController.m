//
//  ViewController.m
//  TipCalculator
//
//  Created by Nick Dubauskas on 11/30/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.customTipLabel.delegate = self;
    self.customTipLabel.keyboardType = UIKeyboardTypeDecimalPad;
    self.billAmountLabel.delegate = self;
    self.billAmountLabel.keyboardType = UIKeyboardTypeDecimalPad;
    self.amountOfPeopleLabel.layer.borderColor = (__bridge CGColorRef _Nullable)([UIColor whiteColor]);
    self.amountOfPeopleLabel.layer.borderWidth = 2.0f;
    
    
}
int peopleCounter = 0;
double billAmount = 0.0;
double tipAmount = 0.0;
double totalPerPerson = 0.0;


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

- (IBAction)calculateButton:(id)sender {
    
    totalPerPerson = (billAmount + (billAmount * tipAmount)) / peopleCounter;

    NSLog(@"Bill amount = %.2f", billAmount);
    NSLog(@"tip amount = %.2f", tipAmount);
    NSLog(@"peoiple amount = %.2d", peopleCounter);
    NSLog(@"Total amount = %.2f", totalPerPerson);
    NSString *tipString = [NSString stringWithFormat: @"Per Person: %.2f", totalPerPerson];
  
    
    _totalLabel.text = tipString;
    
    totalPerPerson = 0;
}

- (IBAction)customTipAmount:(id)sender {
    NSString *customTipText = self.customTipLabel.text;
    
    double inputValue = [customTipText doubleValue];
    tipAmount = inputValue;
    NSLog(@"Converted value: %f", inputValue);
    


}
- (IBAction)billTextField:(id)sender {
    NSString *billAmountText = self.billAmountLabel.text;
    
    double inputValue = [billAmountText doubleValue];
    billAmount = inputValue;
    NSLog(@"Converted value: %f", inputValue);
    
   // NSString *resultString =[NSString stringWithFormat: @"%.2f" , inputValue];
    
  //  _totalLabel.text = resultString;
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)twentyTipButton:(id)sender {
    tipAmount = .20;
    NSLog(@"tip amount = %.2f", tipAmount);
}

- (IBAction)fifteenTipButton:(id)sender {
    tipAmount = .15;
    NSLog(@"tip amount = %.2f", tipAmount);
    
}

- (IBAction)tenTipButton:(id)sender {
    tipAmount = .10;
    NSLog(@"tip amount = %.2f", tipAmount);
    
}


- (IBAction)peopleSlider:(UISlider *)sender {
    
    peopleCounter = round(sender.value);
    NSString *peopleCounterString =[NSString  stringWithFormat:@"%d", peopleCounter];
    _peopleCounterLabel.text = peopleCounterString;
    NSLog(@"Converted value: %@", peopleCounterString);
    
}
    



@end
