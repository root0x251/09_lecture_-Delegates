
//
//  Patient.m
//  09_lecture_ Delegates
//
//  Created by Slava on 25.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (BOOL) howAraYou{
    BOOL isFine = arc4random() % 2;
    
    if(!isFine){
        [self.deligate patientFeelsBad:self];
    }
    
    return isFine;
}

- (void) takePill{
    NSLog(@"%@, takes a pill", self.name);
}

- (void) makeShot{
    NSLog(@"%@, takes a shot", self.name);
}


@end
