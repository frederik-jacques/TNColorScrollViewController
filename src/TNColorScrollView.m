//
//  TNColorScrollView.m
//  TNColorScrollView
//
//  Created by Frederik Jacques on 28/08/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import "TNColorScrollView.h"

@implementation TNColorScrollView

#pragma mark - Lifecycle

- (id)initWithFrame:(CGRect)frame {

    self = [super initWithFrame:frame];
    
    if (self ) {
        
        [self createScrollView];

    }
    
    return self;
}

#pragma mark - NSCopying

#pragma mark - Private methods
- (void)createScrollView {
    
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.bounds];
    self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self addSubview:self.scrollView];
    
}

- (void)updateScrollView {
    
    TNColorScrollViewConfig *config = nil;
    if ([self.delegate respondsToSelector:@selector(configForScrollView)]) {
        config = [self.delegate configForScrollView];
    }
    
    NSUInteger amountOfViews = 0;
    if ([self.delegate respondsToSelector:@selector(numberOfViewsInScrollView)]) {
        amountOfViews = [self.dataSource numberOfViewsInScrollView];
    }
    
    CGSize sizeForScrollView;
    
    if( config.scrollHorizontal ){
        sizeForScrollView = CGSizeMake( amountOfViews * self.bounds.size.width, 0 );
    }else{
        sizeForScrollView = CGSizeMake( 0, amountOfViews * self.bounds.size.height );
    }
        
    self.scrollView.contentSize = sizeForScrollView;
    
    if ([self.delegate respondsToSelector:@selector(scrollViewSizeHasBeenUpdated)]) {
        [self.delegate scrollViewSizeHasBeenUpdated];
    }
    
}

#pragma mark - Public methods
- (void)createViews {
    
    TNColorScrollViewConfig *config = nil;
    if ([self.delegate respondsToSelector:@selector(configForScrollView)]) {
        config = [self.delegate configForScrollView];
    }
    
    NSUInteger amountOfViews = 0;
    if ([self.delegate respondsToSelector:@selector(numberOfViewsInScrollView)]) {
        amountOfViews = [self.dataSource numberOfViewsInScrollView];
    }
    
    NSUInteger position = 0;
    
    for ( NSUInteger i = 0; i < amountOfViews; i++) {
        
        TNColorViewData *data = nil;
        if ([self.delegate respondsToSelector:@selector(scrollView:colorViewDataForIndex:)]) {
            data = [self.delegate scrollView:self colorViewDataForIndex:i];
        }
        
        TNColorView *view = [[data.subClass alloc] initWithFrame:self.bounds andColorViewData:data];
        
        if( config.scrollHorizontal ){
            view.frame = CGRectMake(position, 0, view.bounds.size.width, view.bounds.size.height);
            position += view.bounds.size.width;
        }else{
            view.frame = CGRectMake(0, position, view.bounds.size.width, view.bounds.size.height);
            position += view.bounds.size.height;
        }
        
        [self.scrollView addSubview:view];
        
    }
    
    [self updateScrollView];
}

- (void)updateScrollViewAfterOrientationChangeToPage:(NSUInteger)page {
    
    TNColorScrollViewConfig *config = nil;
    if ([self.delegate respondsToSelector:@selector(configForScrollView)]) {
        config = [self.delegate configForScrollView];
    }
    
    NSUInteger position = 0;
    
    for (TNColorView *colorView in self.scrollView.subviews) {
        
        if( config.scrollHorizontal ){
            colorView.frame = CGRectMake(position, 0, colorView.bounds.size.width, colorView.bounds.size.height);
            position += colorView.bounds.size.width;
        }else{
            colorView.frame = CGRectMake(0, position, colorView.bounds.size.width, colorView.bounds.size.height);
            position += colorView.bounds.size.height;
        }
        
    }
    
    CGPoint newContentOffset;
    
    if( config.scrollHorizontal ) {
        newContentOffset = CGPointMake( page * self.bounds.size.width, 0);
    }else {
        newContentOffset = CGPointMake( 0, page * self.bounds.size.height);
    }
    
    [self.scrollView setContentOffset:newContentOffset];
    [self updateScrollView];
}

#pragma mark - Custom Accessors

#pragma mark - Delegate methods

#pragma mark - Debug


@end
