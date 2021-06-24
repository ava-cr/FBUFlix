//
//  TrailerViewController.m
//  Flix
//
//  Created by Ava Crnkovic-Rubsamen on 6/24/21.
//

#import "TrailerViewController.h"
#import <SVProgressHUD/SVProgressHUD.h>

@interface TrailerViewController ()



@end

@implementation TrailerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [SVProgressHUD show];
    
    NSString *baseURLString = @"https://api.themoviedb.org/3/movie/";
    
    NSString *idURLString = [baseURLString stringByAppendingString:self.movieId];
    
    
    NSString *fullURLString = [idURLString stringByAppendingString:@"/videos?api_key=b91af5506570876790ea086dac50f629&language=en-US"];
    
    // network request
    NSURL *url = [NSURL URLWithString:fullURLString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url cachePolicy:NSURLRequestReloadIgnoringLocalCacheData timeoutInterval:10.0];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration] delegate:nil delegateQueue:[NSOperationQueue mainQueue]];
    NSURLSessionDataTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error != nil) {
            NSLog(@"%@", [error localizedDescription]);
            
        }
        else {
            NSDictionary *dataDictionary = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
            
            // NSLog(@"%@", dataDictionary);
            
            NSArray *results = dataDictionary[@"results"];
            // NSLog(@"%@", results[0][@"key"]);
            
            NSString *key = [NSString stringWithFormat:@"%@", results[0][@"key"]];
            
            NSString *youtubeURLString = [@"https://www.youtube.com/watch?v=" stringByAppendingString:key];
            
            self.urlString = youtubeURLString;
            
            
            NSLog(@"%@", self.urlString);
            
            
            NSURL *trailerURL = [NSURL URLWithString:self.urlString];

            // Place the URL in a URL Request.
            NSURLRequest *trailerRequest = [NSURLRequest requestWithURL:trailerURL
                                                     cachePolicy:NSURLRequestReloadIgnoringLocalCacheData
                                                 timeoutInterval:10.0];
            // Load Request into WebView.
            [SVProgressHUD dismiss];
            
            [self.webView loadRequest:trailerRequest];

        }
           
    }];
    [task resume];
    
    
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
