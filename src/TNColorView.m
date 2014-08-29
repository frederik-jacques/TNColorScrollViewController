//
//  TNColorView.m
//  TNColorScrollView
//
//  Created by Frederik Jacques on 28/08/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import "TNColorView.h"

@implementation TNColorView

#pragma mark - Lifecycle

- (id)initWithFrame:(CGRect)frame andColorViewData:(TNColorViewData *)colorViewData {

    self = [super initWithFrame:frame];
    
    if (self) {
        
        self.colorViewData = colorViewData;
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    }
    
    return self;
}

#pragma mark - NSCopying

#pragma mark - Private methods
- (void)updateView {
    
    self.backgroundColor = self.colorViewData.color;
    
}

#pragma mark - Public methods

#pragma mark - Custom Accessors
- (void)setColorViewData:(TNColorViewData *)colorViewData {
    
    if( _colorViewData != colorViewData ){
        
        _colorViewData = colorViewData;
        
        [self updateView];
        
    }
    
}

#pragma mark - Delegate methods

#pragma mark - Debug

@end
