//
//  AppDelegate.m
//  DataTypes
//
//  Created by EnzoF on 23.07.16.
//  Copyright © 2016 EnzoF. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "Car.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    ViewController *controller = [[ViewController alloc] init];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:controller];
    self.window.rootViewController = navController;
    
    
    Car *car1 = [[Car alloc] init];
    [car1 setMode:smallLitre];
    [car1 setColor:whiteColor];
    
    
    Car *car2 = [[Car alloc] init];
    [car2 setMode:middlelitre];
    [car2 setColor:blueColor];
    
    
    Car *car3 = [[Car alloc] init];
    [car3 setMode:largeLitre];
    [car3 setColor:greenColor];

    
    CGRect rect3x3 = CGRectMake(3.5f, 3.5f, 3.f, 3.f);
    NSMutableSet *randomPointSet;
    for (int i = 0; i<= 1000; i++)
    {
        NSValue *randomPointValue = [NSValue valueWithCGPoint:[self randomPoint]];
        if(!randomPointSet)
        {
            randomPointSet = [[NSMutableSet alloc] initWithObjects:randomPointValue, nil];
        }
        [randomPointSet addObject:randomPointValue];
    }
    
    for (NSValue *pointValue in randomPointSet)
    {
        CGPoint randomPoint = [pointValue CGPointValue];
        if(CGRectContainsPoint(rect3x3, randomPoint))
        {
            NSLog(@"Точка %@ попадает в квадрат 3x3 в центре поля", NSStringFromCGPoint(randomPoint));
        }
    }
    
    // Override point for customization after application launch.
    return YES;
}


- (CGPoint)randomPoint{
    CGFloat randomX = (float)(arc4random() % 100 / 10.f);
    CGFloat randomY = (float)(arc4random() % 100 / 10.f);
    CGPoint randomPoint = CGPointMake(randomX, randomY);
    return randomPoint;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
