//
//  ViewController.h
//  TipCalculator
//
//  Created by Nick Dubauskas on 11/30/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

- (IBAction)billTextField:(id)sender;

- (IBAction)tenTipButton:(id)sender;

- (IBAction)fifteenTipButton:(id)sender;
- (IBAction)twentyTipButton:(id)sender;
- (IBAction)customTipAmount:(id)sender;
- (IBAction)calculateButton:(id)sender;
- (IBAction)peopleSlider:(UISlider *)sender;

@property (weak, nonatomic) IBOutlet UISlider *peopleSliderLabel;

@property (weak, nonatomic) IBOutlet UILabel *amountOfPeopleLabel;

@property (weak, nonatomic) IBOutlet UILabel *totalLabel;

@property (weak, nonatomic) IBOutlet UILabel *peopleCounterLabel;

@property (weak, nonatomic) IBOutlet UITextField *customTipLabel;
@property (weak, nonatomic) IBOutlet UITextField *billAmountLabel;
@property (weak, nonatomic) IBOutlet UIButton *calculateLabel;

@end

