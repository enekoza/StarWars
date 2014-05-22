//
//  EZVCharacterModel.h
//  StarWars
//
//  Created by user22791 on 21/05/14.
//  Copyright (c) 2014 Eurohelp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EZVCharacterModel : NSObject

@property (strong,nonatomic) NSString *firstName;
@property (strong,nonatomic) NSString *lastName;
@property (strong,nonatomic) NSString *alias;
@property (strong,nonatomic) NSURL *wikiPage;
@property (strong,nonatomic) UIImage *foto;
@property (strong,nonatomic) NSData *soundData;

//designado

-(id) initWithFirstName: (NSString *) aFirstName
               lastName: (NSString *) aLastName
                  alias: (NSString *) anAlias
               wikiPage: (NSURL *) aWikiPage
                   foto: (UIImage *) aFoto
              soundData: (NSData *) aSoundData;

//Conveniencia
-(id) initWithAlias: (NSString *) anAlias wikiPage: (NSURL *) aWikiPage
foto: (UIImage *) aFoto
soundData: (NSData *) aSoundData;

@end
