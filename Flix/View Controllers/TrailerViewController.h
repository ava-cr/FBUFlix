//
//  TrailerViewController.h
//  Flix
//
//  Created by Ava Crnkovic-Rubsamen on 6/24/21.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TrailerViewController : UIViewController
@property (weak, nonatomic) IBOutlet WKWebView *webView;
@property (nonatomic, strong) NSString *urlString;
@property (nonatomic, strong) NSString *movieId;

@end

NS_ASSUME_NONNULL_END
