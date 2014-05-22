//
//  EZVCharacterWikiViewController.m
//  StarWars
//
//  Created by user22791 on 21/05/14.
//  Copyright (c) 2014 Eurohelp. All rights reserved.
//

#import "EZVCharacterWikiViewController.h"

@interface EZVCharacterWikiViewController ()

@end

@implementation EZVCharacterWikiViewController

//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}

-(id)initWithModel:(EZVCharacterModel *)model{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.theModel = model; // _theModel=model;
        self.title = @"Wiki";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.webView.delegate = self;
    
    // sincronizar el modelo con la wiki
    [self.webView loadRequest:[NSURLRequest requestWithURL:self.theModel.wikiPage]];
    
    //Inicioar el activity
    [self.activity startAnimating];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UIViewDelegate métods

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [self.activity stopAnimating];
    [self.activity setHidden:YES];
    
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    if (navigationType==UIWebViewNavigationTypeLinkClicked || navigationType == UIWebViewNavigationTypeFormSubmitted || navigationType == UIWebViewNavigationTypeFormResubmitted){
        return NO;
    }
    return YES;
}


@end
