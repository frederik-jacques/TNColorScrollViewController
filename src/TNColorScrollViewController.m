//
//  TNColorScrollViewController.m
//  TNColorScrollView
//
//  Created by Frederik Jacques on 28/08/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import "TNColorScrollViewController.h"

@interface TNColorScrollViewController ()

@property (nonatomic) NSUInteger currentPage;

@end

@implementation TNColorScrollViewController

#pragma mark - Lifecycle

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {

    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        
        NSAssert( _config != nil, @"[TNColorScrollViewController] You should use the initWithColorScrollViewConfig: method to create an instance of this class!");

    }
    
    return self;
}

- (instancetype)initWithColorScrollViewConfig:(TNColorScrollViewConfig *)colorScrollViewConfig {
    
    self.config = colorScrollViewConfig;
    
    return [self initWithNibName:nil bundle:nil];
    
}

- (void)loadView {
    CGRect bounds = [UIScreen mainScreen].bounds;
    
    self.view = [[TNColorScrollView alloc] initWithFrame:bounds];
    
    self.view.dataSource = self;
    self.view.delegate = self;
    
    [self.view createViews];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - NSCopying

#pragma mark - Private methods

#pragma mark - Public methods

#pragma mark - Custom Accessors

#pragma mark - TNColorScrollViewDataSource methods
- (NSUInteger)numberOfViewsInScrollView {
    
    return self.config.colorDataObjects.count;
    
}

#pragma mark - TNColorScrollViewDelegate methods
- (TNColorViewData *)scrollView:(TNColorScrollView *)scrollView colorViewDataForIndex:(NSUInteger)index {
    
    return [self.config.colorDataObjects objectAtIndex:index];
    
}

- (TNColorScrollViewConfig *)configForScrollView {
    
    return self.config;
    
}

- (void)scrollViewSizeHasBeenUpdated {

    self.view.scrollView.bounces = self.config.bounces;
    self.view.scrollView.showsHorizontalScrollIndicator = self.config.showsHorizontalScrollIndicator;
    self.view.scrollView.showsVerticalScrollIndicator = self.config.showsVerticalScrollIndicator;
    self.view.scrollView.pagingEnabled = self.config.pagingEnabled;
    
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    
    NSUInteger page = 0;
    
    if( self.config.scrollHorizontal ) {
        page = self.view.scrollView.contentOffset.x / self.view.scrollView.bounds.size.width;
    }else {
        page = self.view.scrollView.contentOffset.y / self.view.scrollView.bounds.size.height;
    }
    
    self.currentPage = page;
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    
    [self.view updateScrollViewAfterOrientationChangeToPage:self.currentPage];
    
}

#pragma mark - Debug


@end
