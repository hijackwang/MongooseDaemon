//
//  RootViewController.m
//  Example
//
//  Created by Yongliang Wang on 8/21/13.
//  Copyright (c) 2013 Dajiale Group. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    NSString *webPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"Web"];
    
    mongooseDaemon = [[MongooseDaemon alloc] init];
    mongooseDaemon.documentRoot = webPath;
    mongooseDaemon.listeningPort = 8888;
    [mongooseDaemon start];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)request:(id)sender {
    
    [self.address resignFirstResponder];
    self.content.text = @"";
    NSString *url = [NSString stringWithFormat:@"http://%@:8888/index.html", self.address.text];
    
    NSError *error = nil;
    NSString *content = [NSString stringWithContentsOfURL:[NSURL URLWithString:url]
                                                 encoding:NSUTF8StringEncoding error:&error];
    if(error){
        self.content.text = [error description];
    }else
        self.content.text = content;
}
@end
