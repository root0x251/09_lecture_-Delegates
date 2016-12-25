//
//  Doctor.h
//  09_lecture_ Delegates
//
//  Created by Slava on 25.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@protocol PatientDeligate;
@interface Doctor : NSObject <PatientDeligate>

@end
