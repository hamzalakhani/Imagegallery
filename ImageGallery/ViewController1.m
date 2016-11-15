//
//  ViewController1.m
//  ImageGallery
//
//  Created by Hamza Lakhani on 2016-11-14.
//  Copyright © 2016 Hamza Lakhani. All rights reserved.
//

#import "ViewController1.h"

@interface ViewController1 ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView1;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    self.scrollView1.contentSize = self.imageView.bounds.size;
    
    self.scrollView1.minimumZoomScale = 0.5;
    self.scrollView1.maximumZoomScale = 4.0;
    
    self.scrollView1.zoomScale = 1.0;
}
-(UIView*) viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.imageView;
}

-(void) scrollViewDidZoom:(UIScrollView *)scrollView
{
    CGSize scrollViewSize = scrollView.bounds.size;
    
    //Use frame here!
    CGSize imageSize = self.imageView.frame.size;
    
    float verticalPadding = (scrollViewSize.height - imageSize.height)/2;
    float horizontalPadding = (scrollViewSize.width - imageSize.width)/2;
    
    scrollView.contentInset = UIEdgeInsetsMake( verticalPadding, horizontalPadding, verticalPadding, horizontalPadding);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
