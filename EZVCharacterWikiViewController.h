//
//  EZVCharacterWikiViewController.h
//  StarWars
//
//  Created by user22791 on 21/05/14.
//  Copyright (c) 2014 Eurohelp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EZVCharacterModel.h"

@interface EZVCharacterWikiViewController : UIViewController<UIWebViewDelegate>

@property(weak, nonatomic) IBOutlet UIWebView * webView;

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activity;
@property (strong,nonatomic) EZVCharacterModel *theModel;

-(id)initWithModel:(EZVCharacterModel *)model;

@end
