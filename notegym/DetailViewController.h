//
//  DetailViewController.h
//  notegym
//
//  Created by Jhon Wilfer Orrego on 16/11/13.
//  Copyright (c) 2013 Jhon Wilfer Orrego. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
