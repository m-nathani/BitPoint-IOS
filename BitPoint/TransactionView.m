//  Created on 10/30/18.

#import "TransactionView.h"
#import "TransactionController.h"
#import "ActionSheetPicker.h"
#import "Lookup.h"

@interface TransactionView ()
@property (weak, nonatomic) IBOutlet UITextField *textfieldNIC;
@property (weak, nonatomic) IBOutlet UITextField *textfieldReason;
@property (weak, nonatomic) IBOutlet UITextField *textfieldPoints;

@property (nonatomic, strong) Lookup *selectedLookup;

@end

@implementation TransactionView

- (void)viewDidLoad {
    _textfieldNIC.text = @"4220128879545";
}

- (void)setLookups:(NSArray *)lookups {
    _lookups = lookups;
    
    [self setSelectedLookup:_lookups[0]];
}

- (void)setSelectedLookup:(Lookup *)selectedLookup {
    _selectedLookup = selectedLookup;
    
    _textfieldReason.text = _selectedLookup.name;
    _textfieldPoints.text = _selectedLookup.point.stringValue;
}

- (NSArray *)getReasons {
    NSMutableArray *reasons = [NSMutableArray new];
    for (Lookup *lookup in _lookups) {
        [reasons addObject:lookup.name];
    }
    
    return reasons;
}

- (IBAction)onReasonFieldTap:(id)sender {

    [ActionSheetStringPicker showPickerWithTitle:@"Select Reason"
                                            rows:[self getReasons]
                                initialSelection:0
                                       doneBlock:^(ActionSheetStringPicker *picker, NSInteger selectedIndex, id selectedValue) {
                                           self.selectedLookup = _lookups[selectedIndex];
                                       }
                                     cancelBlock:^(ActionSheetStringPicker *picker) {
                                         NSLog(@"Block Picker Canceled");
                                     }
                                          origin:self];
}


- (IBAction)onTransferPointsTap:(id)sender {
    if(!_selectedLookup) {
        [Alert showAlertWithMessage:@"Please select reason for award"];
        return;
    }
    
    [(TransactionController *)self.controller transferPointsInBlockChain:_selectedLookup toNic:_textfieldNIC.text];
}



@end
