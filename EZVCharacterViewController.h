//
//  EZVCharacterViewController.h
//  StarWars
//
//  Created by user22791 on 21/05/14.
//  Copyright (c) 2014 Eurohelp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EZVCharacterModel.h"

@interface EZVCharacterViewController : UIViewController

@property (weak,nonatomic) IBOutlet UIImageView *imageView;

-(id) initWithModel:(EZVCharacterModel *) aModel;


@end
