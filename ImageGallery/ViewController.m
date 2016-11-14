//
//  ViewController.m
//  ImageGallery
//
//  Created by Hamza Lakhani on 2016-11-14.
//  Copyright © 2016 Hamza Lakhani. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIImageView *imageViewOne = [[UIImageView alloc] initWithFrame:CGRectZero];
    imageViewOne.translatesAutoresizingMaskIntoConstraints = NO;
    imageViewOne.image = [UIImage imageNamed:@"Lighthouse.jpg"];
    [self.scrollView addSubview:imageViewOne];
    //self.scrollView.contentSize = self.boxOne.bounds.size;
//    imagview.frame.size.width

    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:imageViewOne
                                                          attribute:NSLayoutAttributeLeftMargin
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.scrollView
                                                          attribute:NSLayoutAttributeLeft
                                                         multiplier:1.0
                                                           constant:0]];
//what to i need to do with right margin + WHY CERTAIN MARGAIN HAVE CERTAiN CONSTRAINTS
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:imageViewOne
                                                          attribute:NSLayoutAttributeTopMargin
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.scrollView
                                                          attribute:NSLayoutAttributeTop
                                                         multiplier:1.0
                                                           constant:0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:imageViewOne
                                                                attribute:NSLayoutAttributeWidth
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil //youre not comparing to anything
                                                                attribute:NSLayoutAttributeNotAnAttribute
                                                               multiplier:1.0
                                                                 constant:self.view.bounds.size.width]];
    
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:imageViewOne
                                                                attribute:NSLayoutAttributeHeight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil //youre not comparing to anything
                                                                attribute:NSLayoutAttributeNotAnAttribute//not comapring
                                                               multiplier:1.0
                                                                 constant:self.view.bounds.size.height]];
    
    UIImageView *imageViewTwo = [[UIImageView alloc] initWithFrame:CGRectZero];
    imageViewTwo.translatesAutoresizingMaskIntoConstraints = NO;
    imageViewTwo.image = [UIImage imageNamed:@"Lighthouse-night.jpg"];
    [self.scrollView addSubview:imageViewTwo];
//quiestions about left margin and top margin
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:imageViewTwo
                                                                attribute:NSLayoutAttributeLeftMargin
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.scrollView
                                                                attribute:NSLayoutAttributeLeft
                                                               multiplier:1.0
                                                                 constant:imageViewOne.bounds.size.height]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:imageViewTwo
                                                                attribute:NSLayoutAttributeTopMargin
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:imageViewOne
                                                                attribute:NSLayoutAttributeBottom
                                                               multiplier:1.0
                                                                 constant:0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:imageViewTwo
                                                                attribute:NSLayoutAttributeWidth
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil //youre not comparing to anything
                                                                attribute:NSLayoutAttributeNotAnAttribute
                                                               multiplier:1.0
                                                                 constant:self.view.bounds.size.width]];
    
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:imageViewTwo
                                                                attribute:NSLayoutAttributeHeight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil //youre not comparing to anything
                                                                attribute:NSLayoutAttributeNotAnAttribute//not comapring
                                                               multiplier:1.0
                                                                 constant:self.view.bounds.size.height]];
    
//    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:imageViewTwo
//                                                                attribute:NSLayoutAttributeBottomMargin
//                                                                relatedBy:NSLayoutRelationEqual
//                                                                   toItem:self.scrollView
//                                                                attribute:NSLayoutAttributeBottom
//                                                               multiplier:1.0
//                                                                 constant:0]];


    UIImageView *imageViewThree = [[UIImageView alloc] initWithFrame:CGRectZero];
    imageViewThree.translatesAutoresizingMaskIntoConstraints = NO;
    imageViewThree.image = [UIImage imageNamed:@"Lighthouse-in-Field.jpg"];
    [self.scrollView addSubview:imageViewThree];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:imageViewThree
                                                                attribute:NSLayoutAttributeLeftMargin
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.scrollView
                                                                attribute:NSLayoutAttributeLeft
                                                               multiplier:1.0
                                                                 constant:imageViewThree.bounds.size.height]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:imageViewThree
                                                                attribute:NSLayoutAttributeTopMargin
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:imageViewTwo
                                                                attribute:NSLayoutAttributeBottom
                                                               multiplier:1.0
                                                                 constant:0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:imageViewThree
                                                                attribute:NSLayoutAttributeWidth
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil //youre not comparing to anything
                                                                attribute:NSLayoutAttributeNotAnAttribute
                                                               multiplier:1.0
                                                                 constant:self.view.bounds.size.width]];
    
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:imageViewThree
                                                                attribute:NSLayoutAttributeHeight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil //youre not comparing to anything
                                                                attribute:NSLayoutAttributeNotAnAttribute//not comapring
                                                               multiplier:1.0
                                                                 constant:self.view.bounds.size.height]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:imageViewThree
                                                                attribute:NSLayoutAttributeBottomMargin
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.scrollView
                                                                attribute:NSLayoutAttributeBottom
                                                               multiplier:1.0
                                                                 constant:0]];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
