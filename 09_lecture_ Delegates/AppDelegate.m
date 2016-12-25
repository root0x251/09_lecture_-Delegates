//
//  AppDelegate.m
//  09_lecture_ Delegates
//
//  Created by Slava on 25.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import "AppDelegate.h"
#import "Patient.h"
#import "Doctor.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    Patient *patient1 = [Patient new];
    Patient *patient2 = [Patient new];
    Patient *patient3 = [Patient new];
    Patient *patient4 = [Patient new];

    patient1.name = @"Roma";
    patient1.temperature = 36.3f;
    
    patient2.name = @"Vlad";
    patient2.temperature = 38.9f;

    patient3.name = @"Alex";
    patient3.temperature = 33.2f;

    patient4.name = @"Dima";
    patient4.temperature = 42.1f;

    Doctor *doctor = [Doctor new];
    
    patient1.deligate = doctor;
    patient2.deligate = doctor;
    patient3.deligate = doctor;
    patient4.deligate = doctor;

    NSLog(@"%@ are you okey? %@", patient1.name, [patient1 howAraYou]? @"Yes" : @"No");
    NSLog(@"=======");
    NSLog(@"%@ are you okey? %@", patient2.name, [patient2 howAraYou]? @"Yes" : @"No");
    NSLog(@"=======");
    NSLog(@"%@ are you okey? %@", patient3.name, [patient3 howAraYou]? @"Yes" : @"No");
    NSLog(@"=======");
    NSLog(@"%@ are you okey? %@", patient4.name, [patient4 howAraYou]? @"Yes" : @"No");
    NSLog(@"=======");

    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
