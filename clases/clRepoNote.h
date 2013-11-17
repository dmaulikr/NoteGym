//
//  clRepoNote.h
//  notegym
//
//  Created by Jhon Wilfer Orrego on 16/11/13.
//  Copyright (c) 2013 Jhon Wilfer Orrego. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface clRepoNote : NSObject
@property (nonatomic, strong) NSMutableArray * arryNote;
+(clRepoNote *) instanciaPublica;
-(void) leerNotas;
-(void) guardarNotas;
-(NSString *) rutaPlist;

@end
