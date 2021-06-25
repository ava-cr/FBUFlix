//
//  DetailsViewController.m
//  Flix
//
//  Created by Ava Crnkovic-Rubsamen on 6/23/21.
//

#import "DetailsViewController.h"
#import "UIImageView+AFNetworking.h"
#import "TrailerViewController.h"

@interface DetailsViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *backdropView;
@property (weak, nonatomic) IBOutlet UIImageView *posterView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;


@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *baseURLString = @"https://image.tmdb.org/t/p/w500";
    NSString *posterURLString = self.movie[@"poster_path"];
    NSString *fullPosterURLString = [baseURLString stringByAppendingString:posterURLString];
    NSURL *posterURL = [NSURL URLWithString:fullPosterURLString];
    [self.posterView setImageWithURL:posterURL];
    
    NSString *backdropURLString = self.movie[@"backdrop_path"];
    NSString *fullBackdropURLString = [baseURLString stringByAppendingString:backdropURLString];
    NSURL *backdropURL = [NSURL URLWithString:fullBackdropURLString];
    [self.backdropView setImageWithURL:backdropURL];
    
    
    // fading out backdrop images
    CALayer *gradientLayer = self.backdropView.layer;
    CAGradientLayer *gradientMaskLayer = [CAGradientLayer layer];
    gradientMaskLayer.colors = @[ (id)([UIColor blackColor].CGColor), (id)([UIColor clearColor].CGColor) ];
    gradientMaskLayer.startPoint = CGPointMake(0, 0.3); // middle left
    gradientMaskLayer.endPoint = CGPointMake(0, 1.0); // bottom left
    gradientMaskLayer.frame = self.backdropView.bounds;
    gradientLayer.mask = gradientMaskLayer;
    
    
    self.titleLabel.text = self.movie[@"title"];
    self.synopsisLabel.text = self.movie[@"overview"];
    
    [self.titleLabel sizeToFit];
    [self.synopsisLabel sizeToFit];
    
    
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if([segue.identifier  isEqual: @"trailerSegue"]) {
        // going to Trailer VC
        
        TrailerViewController *trailerViewController = [segue destinationViewController];
                
        
        NSString *idString = [NSString stringWithFormat:@"%@", self.movie[@"id"]];
        
        trailerViewController.movieId = idString;
        
    }
    
}


@end

