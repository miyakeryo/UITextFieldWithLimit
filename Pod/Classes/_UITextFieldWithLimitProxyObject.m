//
// Created by azu on 2014/08/14.
//


#import <UIKit/UIKit.h>
#import "_UITextFieldWithLimitProxyObject.h"


@implementation _UITextFieldWithLimitProxyObject {

}
- (BOOL)textField:(UITextField *) textField shouldChangeCharactersInRange:(NSRange) range replacementString:(NSString *) string {
    [self.delegate textField:textField shouldChangeCharactersInRange:range replacementString:string];
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    if ([self.delegate respondsToSelector:@selector(textFieldDidBeginEditing:)]) {
        [self.delegate textFieldDidBeginEditing:textField];
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if ([self.delegate respondsToSelector:@selector(textFieldShouldReturn:)]) {
        [self.delegate textFieldShouldReturn:textField];
    }
}

@end