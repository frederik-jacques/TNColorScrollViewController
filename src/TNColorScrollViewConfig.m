//
//  TNColorScrollViewConfig.m
//  TNColorScrollView
//
//  Created by Frederik Jacques on 29/08/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import "TNColorScrollViewConfig.h"

@implementation TNColorScrollViewConfig

#pragma mark - Lifecycle
- (instancetype)initWithColorDataObjects:(NSArray *)colorDataObjects {
    
    return [self initWithColorDataObjects:colorDataObjects bounces:YES showsHorizontalScrollIndicator:YES showsVerticalScrollIndicator:YES pagingEnabled:NO scrollHorizontal:YES];
}

- (instancetype)initWithColorDataObjects:(NSArray *)colorDataObjects pagingEnabled:(BOOL)pagingEnabled {
    
    return [self initWithColorDataObjects:colorDataObjects bounces:YES showsHorizontalScrollIndicator:YES showsVerticalScrollIndicator:YES pagingEnabled:pagingEnabled scrollHorizontal:YES];
}

- (instancetype)initWithColorDataObjects:(NSArray *)colorDataObjects pagingEnabled:(BOOL)pagingEnabled bounces:(BOOL)bounces {
    
    return [self initWithColorDataObjects:colorDataObjects bounces:bounces showsHorizontalScrollIndicator:YES showsVerticalScrollIndicator:YES pagingEnabled:pagingEnabled scrollHorizontal:YES];
}

- (instancetype)initWithColorDataObjects:(NSArray *)colorDataObjects bounces:(BOOL)bounces showsHorizontalScrollIndicator:(BOOL)showsHorizontalScrollIndicator showsVerticalScrollIndicator:(BOOL)showsVerticalScrollIndidator pagingEnabled:(BOOL)pagingEnabled scrollHorizontal:(BOOL)scrollHorizontal {
    
    self.colorDataObjects = colorDataObjects;
    self.bounces = bounces;
    self.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator;
    self.showsVerticalScrollIndicator = showsVerticalScrollIndidator;
    self.pagingEnabled = pagingEnabled;
    self.scrollHorizontal = scrollHorizontal;
    
    return [self init];
}

- (instancetype)init {
    
    self = [super init];
    
    if (self) {
        
        NSAssert( _colorDataObjects != nil, @"[TNColorScrollViewConfig] You should use one of the other initWith... methods to create an instance of this class!");
        
    }
    
    return self;
}


#pragma mark - NSCopying

#pragma mark - Private methods

#pragma mark - Public methods

#pragma mark - Custom Accessors

- (NSArray *)colorDataObjects {

    NSAssert(_colorDataObjects != nil, @"[TNColorScrollViewConfig] The 'colorDataObjects' property should not be nil!");
    
    return _colorDataObjects;
    
}

#pragma mark - Delegate methods

#pragma mark - Debug

- (NSString *)description {
	return [NSString stringWithFormat:@"[TNColorScrollViewConfig]"];
}

@end
