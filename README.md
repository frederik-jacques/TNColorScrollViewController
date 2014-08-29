Color scrollview controller for Objective-C
=========================

U can use the TNColorScrollViewController class if you quickly want to create a view controller which contains views with different background colors.  You have the possibility to add your own view classes to the scrollview.

The view controller supports rotation in every direction and you can layout your views horizontally of vertically.
You have full control over the scrollview delegate methods to implement your own logic on top of the view controller.


![Screenshot](http://cl.ly/XGuR/Screen%20Recording%202014-08-29%20at%2012.26%20pm.gif)

Installation
=============

##Manual
* Just drag the files in the src folder to your project.
* Import the radio button class you want to use

##Cocoapods
* Add ``` pod 'TNColorScrollViewController' ``` to your Podfile
* Done

How to use
==========

Import the ```TNColorScrollViewController.h``` file.

Create color data objects (``` TNColorViewData ```) for every view you want to add and put them in an array.

You can use the following initialisers:

TNColorViewData initialisers  |
 ------------- | ------------- 
- (instancetype)initWithColor:(UIColor *)color; |
- (instancetype)initWithCustomClass:(Class)customClass; |
- (instancetype)initWithColor:(UIColor *)color andCustomClass:(Class)customClass; |

**If you want to use a custom view class, this class has to subclass TNColorView**

Then you create a ``` TNColorScrollViewConfig ``` which will tell the view controller how to behave. 

You can use the following initialisers:

TNColorScrollViewConfig initialisers  |
 ------------- | ------------- 
- (instancetype)initWithColorDataObjects:(NSArray *)colorDataObjects; |
- (instancetype)initWithColorDataObjects:(NSArray *)colorDataObjects pagingEnabled:(BOOL)pagingEnabled; |
- (instancetype)initWithColorDataObjects:(NSArray *)colorDataObjects pagingEnabled:(BOOL)pagingEnabled bounces:(BOOL)bounces; |
- (instancetype)initWithColorDataObjects:(NSArray *)colorDataObjects bounces:(BOOL)bounces showsHorizontalScrollIndicator:(BOOL)showsHorizontalScrollIndicator showsVerticalScrollIndicator:(BOOL)showsVerticalScrollIndidator pagingEnabled:(BOOL)pagingEnabled scrollHorizontal:(BOOL)scrollHorizontal; |

The last step is to create the view controller and put it on screen.  You can use the following initialiser:

TNColorScrollViewController initialisers  |
 ------------- | ------------- 
- (instancetype)initWithColorScrollViewConfig:(TNColorScrollViewConfig *)colorScrollViewConfig; |

The different classes have the following extra properties:

Demo
=====
There is a demo project added to this repository, so you can see how it works.

License
=======
TNColorScrollViewController published under the MIT license:

Copyright (C) 2014, Frederik Jacques

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. 