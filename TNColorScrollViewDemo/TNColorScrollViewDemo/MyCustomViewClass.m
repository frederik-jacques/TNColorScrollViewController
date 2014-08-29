//
//  MyCustomViewClass.m
//  TNColorScrollViewDemo
//
//  Created by Frederik Jacques on 29/08/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import "MyCustomViewClass.h"

@implementation MyCustomViewClass

#pragma mark - Lifecycle

- (id)initWithFrame:(CGRect)frame andColorViewData:(TNColorViewData *)colorViewData {

    self = [super initWithFrame:frame andColorViewData:colorViewData];
    
    if (self) {
        // Initialization code
        
        self.backgroundColor = [UIColor colorWithRed:251/255.0f green:116/255.0f blue:31/255.0f alpha:1];
        
    }
    
    return self;
}

#pragma mark - NSCopying

#pragma mark - Private methods

#pragma mark - Public methods

#pragma mark - Custom Accessors

#pragma mark - Delegate methods

#pragma mark - Debug

- (NSString *)description {
	return [NSString stringWithFormat:@"[MyCustomViewClass]"];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
