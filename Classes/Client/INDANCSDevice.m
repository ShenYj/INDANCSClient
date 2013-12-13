//
//  INDANCSDevice.m
//  INDANCSMac
//
//  Created by Indragie Karunaratne on 12/11/2013.
//  Copyright (c) 2013 Indragie Karunaratne. All rights reserved.
//

#import "INDANCSDevice.h"
#import "INDANCSDevice_Private.h"

@implementation INDANCSDevice

#pragma mark - Initialization

- (id)initWithCBPeripheral:(CBPeripheral *)peripheral
{
	if ((self = [super init])) {
		_peripheral = peripheral;
		self.name = peripheral.name;
	}
	return self;
}

#pragma mark - NSObject

- (NSString *)description
{
	return [NSString stringWithFormat:@"<%@:%p name:%@>", NSStringFromClass(self.class), self, self.name];
}

@end