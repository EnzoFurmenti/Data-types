//
//  Car.h
//  DataTypes
//
//  Created by EnzoF on 23.07.16.
//  Copyright © 2016 EnzoF. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
    blackColor,
    whiteColor,
    blueColor,
    greenColor
}CarColor;

typedef enum{
    smallLitre,
    middlelitre,
    largeLitre
}CarMode;

@interface Car : NSObject
@property(nonatomic,assign) CarColor color;
@property(nonatomic,assign) CarMode mode;

@end
