//
//  HideKViewController.h
//  HideK
//
//  Created by webstudent on 9/15/14.
//  Copyright (c) 2014 webstudent. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HideKViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIScrollView *Scrollview;
@property (weak, nonatomic) IBOutlet UITextField *txtfn;
@property (weak, nonatomic) IBOutlet UITextField *txtln;
@property (weak, nonatomic) IBOutlet UITextField *txtemail;
@property (weak, nonatomic) IBOutlet UITextField *txtad;
@property (weak, nonatomic) IBOutlet UITextField *txtzip;
-(IBAction) doneEditing:(id) sender; @end
