//
//  EZVCharacterModel.m
//  StarWars
//
//  Created by user22791 on 21/05/14.
//  Copyright (c) 2014 Eurohelp. All rights reserved.
//

#import "EZVCharacterModel.h"

@implementation EZVCharacterModel

-(id) initWithFirstName: (NSString *) aFirstName
               lastName: (NSString *) aLastName
                  alias: (NSString *) anAlias
               wikiPage: (NSURL *) aWikiPage
                   foto: (UIImage *) aFoto
              soundData: (NSData *) aSoundData{
    
    if (self = [super init]){
        _firstName = aFirstName;
        _lastName = aLastName;
        _alias = anAlias;
        _wikiPage = aWikiPage;
        _foto = aFoto;
        _soundData = aSoundData;
    }
    
    return self;
    
}

-(id) initWithAlias: (NSString *) anAlias wikiPage: (NSURL *) aWikiPage
               foto: (UIImage *) aFoto
          soundData: (NSData *) aSoundData{
    return [self initWithFirstName:nil lastName:nil alias:anAlias wikiPage:aWikiPage foto:aFoto soundData:aSoundData];
}

@end
