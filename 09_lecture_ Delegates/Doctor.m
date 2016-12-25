//
//  Doctor.m
//  09_lecture_ Delegates
//
//  Created by Slava on 25.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import "Doctor.h"
@implementation Doctor

#pragma mark - PatientDeligate
- (void) patientFeelsBad: (Patient *) patient{
    NSLog(@"Patient %@ feels bad", patient.name);
    
    if(patient.temperature < 36.6f){
        [patient makeShot];
    }else if (patient.temperature >= 37.0f && patient.temperature <= 40.0f){
        [patient takePill];
    }else if (patient.temperature > 40.0f){
        [patient makeShot];
    }else{
        NSLog(@"Relax %@, man", patient.name);
    }
}

- (void) patient: (Patient *) patient hasQuestion: (NSString *) question{
    NSLog(@"patient %@, has a question: %@", patient.name, question);
}


@end
