//
//  clRepoNote.m
//  notegym
//
//  Created by Jhon Wilfer Orrego on 16/11/13.
//  Copyright (c) 2013 Jhon Wilfer Orrego. All rights reserved.
//

#import "clRepoNote.h"
#import "clNotas.h"


@implementation clRepoNote

@synthesize arrayNote;
static clRepoNote * instancia;

-(id) init{
    if(self = [super init]){
        [self leerNotas];
        if (self.arrayNote == nil)
        {
            self.arrayNote = [[NSMutableArray alloc]init];
        }
    }
    return self;
}

-(void) leerNotas{
    NSArray * arrayNotasleidas = [[NSArray alloc]initWithContentsOfFile:[self rutaPlist]];
    if (arrayNotasleidas == nil) {
        UIAlertView * mensaje = [[UIAlertView alloc]initWithTitle:@"Note Gym" message:@"No Hay notas de GYM" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles:nil, nil];
    }
    else
    {
        self.arrayNote = [[NSMutableArray alloc]init];
        for (NSDictionary * fila in arrayNotasleidas)
        {
            clNotas * obFila = [[clNotas alloc] init];
            obFila.Km = [fila objectForKey: @"km"];
            obFila.Kal = [fila objectForKey: @"kal"];
            obFila.Time = [fila objectForKey: @"Time"];
            obFila.TotalD = [fila objectForKey: @"TotalD"];
            obFila.Dia = [fila objectForKey: @"Dia"];
            [arrayNote addObject:obFila];
        }
        
    }
}
-(void) guardarNotas{
}
-(NSString *) rutaPlist{
    return @"GYM";
}

+(clRepoNote *) instanciaPublica{
    if (instancia == nil){
        instancia = [[clRepoNote alloc] init];
    }
    return instancia;
}

@end
