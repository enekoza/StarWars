//
//  EZVCharacterViewController.m
//  StarWars
//
//  Created by user22791 on 21/05/14.
//  Copyright (c) 2014 Eurohelp. All rights reserved.
//

#import "EZVCharacterViewController.h"
#import "EZVCharacterWikiViewController.h"
#import "CafPlayer.h"

@interface EZVCharacterViewController (){
    EZVCharacterModel *model;
}


@end

@implementation EZVCharacterViewController

//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}

-(id) initWithModel:(EZVCharacterModel *) aModel{
    
    if (self = [super initWithNibName:nil bundle:nil]){
        model=aModel;
        self.title = aModel.alias;
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    // sincronizar modelo con imagenView
    self.imageView.image = model.foto;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - sonido

-(IBAction)playSound:(id)sender{
    
    CafPlayer *player  = [CafPlayer cafPlayer];
    
    [player playSoundData:model.soundData];
    
}

- (IBAction)displayWiki:(id)sender{
    EZVCharacterWikiViewController *wikiController = [[EZVCharacterWikiViewController alloc]initWithModel:model];
    
    [self.navigationController pushViewController:wikiController animated:YES];
}

@end
