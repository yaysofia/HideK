//
//  HideKViewController.m
//  HideK
//
//  Created by webstudent on 9/15/14.
//  Copyright (c) 2014 webstudent. All rights reserved.
//

#import "HideKViewController.h"

@interface HideKViewController ()

@end

@implementation HideKViewController

- (void)viewDidLoad{

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                               initWithTarget:self
                               action:@selector(dismissKeyboard)];

[self.view addGestureRecognizer:tap];
CGSize size = [self getScreenSize];
self.Scrollview .frame = CGRectMake(0, 50, size.width, size.height);
    //[self.Scrollview  setContentSize:CGSizeMake(320, 1064)];
}
-(void)dismissKeyboard
{
    // add textfields and textviews
    //[Nameofoutletlikeatextfield resignFirstResponder];
    [self.txtfn resignFirstResponder];
    [self.txtln resignFirstResponder];
    [self.txtemail resignFirstResponder];
    [self.txtzip resignFirstResponder];
    [self.txtad resignFirstResponder];}



//right-click drag textfield to fileowner select doneediting
//right-click drag textfield to fileowner select delegate
-(IBAction) doneEditing:(id) sender {
    [sender resignFirstResponder];
}

- (CGSize)getScreenSize
{
    //Get Screen size
    CGSize size;
    if (UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation) && [[UIScreen mainScreen] bounds].size.height > [[UIScreen mainScreen] bounds].size.width) {
        // in Landscape mode, width always higher than height
        size.width = [[UIScreen mainScreen] bounds].size.height;
        size.height = [[UIScreen mainScreen] bounds].size.width;
    } else if (UIInterfaceOrientationIsPortrait([UIApplication sharedApplication].statusBarOrientation) && [[UIScreen mainScreen] bounds].size.height < [[UIScreen mainScreen] bounds].size.width) {
        // in Portrait mode, height always higher than width
        size.width = [[UIScreen mainScreen] bounds].size.height;
        size.height = [[UIScreen mainScreen] bounds].size.width;
    } else {
        // otherwise it is normal
        size.height = [[UIScreen mainScreen] bounds].size.height;
        size.width = [[UIScreen mainScreen] bounds].size.width;
    }
    return size;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField {
    CGPoint scrollPoint = CGPointMake(0, textField.frame.origin.y);
    [self.Scrollview setContentOffset:scrollPoint animated:YES];
}
- (void)textFieldDidEndEditing:(UITextField *)textField {
    [self.Scrollview setContentOffset:CGPointZero animated:YES];
}
- (void)textViewDidBeginEditing:(UITextView *)textView {
    CGPoint scrollPoint = CGPointMake(0, textView.frame.origin.y);
    [self.Scrollview  setContentOffset:scrollPoint animated:YES];
}
- (void)textViewDidEndEditing:(UITextView *)textView {
    [self.Scrollview  setContentOffset:CGPointZero animated:YES];
}


- (void)didReceiveMemoryWarning
{
       }

    // Dispose of any resources that can be recreated.


@end
