//
//  YLAppDelegate.h
//  Example
//
//  Created by Yongliang Wang on 8/2/13.
//  Copyright (c) 2013 Dajiale Group. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MongooseDaemon.h"

@interface YLAppDelegate : UIResponder <UIApplicationDelegate>
{
    MongooseDaemon    *mongooseDaemon;
}
@property (strong, nonatomic) UIWindow *window;

@end
