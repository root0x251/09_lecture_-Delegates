//
//  Patient.h
//  09_lecture_ Delegates
//
//  Created by Slava on 25.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@protocol PatientDeligate;

@interface Patient : NSObject

@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) CGFloat temperature;
@property (weak, nonatomic) id <PatientDeligate> deligate;

- (BOOL) howAraYou;
- (void) takePill;
- (void) makeShot;

@end

@protocol PatientDeligate <NSObject>
@required   // по умолчанию
- (void) patientFeelsBad: (Patient *) patient;
- (void) patient: (Patient *) patient hasQuestion: (NSString *) question;

@end
