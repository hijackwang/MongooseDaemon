//
//  RootViewController.h
//  Example
//
//  Created by Yongliang Wang on 8/21/13.
//  Copyright (c) 2013 Dajiale Group. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MongooseDaemon.h"

@interface RootViewController : UIViewController
{
    MongooseDaemon    *mongooseDaemon;
}
@property (weak, nonatomic) IBOutlet UITextField *address;
@property (weak, nonatomic) IBOutlet UITextView *content;
- (IBAction)request:(id)sender;
@end
