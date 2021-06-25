//
//  MovieCell.h
//  Flix
//
//  Created by Ava Crnkovic-Rubsamen on 6/23/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MovieCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;
@property (weak, nonatomic) IBOutlet UIImageView *posterView;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundPosterView;

@end

NS_ASSUME_NONNULL_END
