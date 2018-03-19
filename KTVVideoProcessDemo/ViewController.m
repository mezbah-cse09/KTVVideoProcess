//
//  ViewController.m
//  KTVVideoProcessDemo
//
//  Created by Single on 2018/3/15.
//  Copyright © 2018年 Single. All rights reserved.
//

#import "ViewController.h"
#import "KTVVPVideoCamera.h"
#import "KTVVPFrameView.h"

@interface ViewController ()

@property (nonatomic, strong) KTVVPContext * context;
@property (nonatomic, strong) KTVVPVideoCamera * videoCamera;
@property (nonatomic, strong) KTVVPFrameView * frameView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.context = [[KTVVPContext alloc] init];
    
    self.frameView = [[KTVVPFrameView alloc] initWithContext:self.context];
    self.frameView.frame = CGRectMake(0, 20, 360, 640);
    [self.view addSubview:self.frameView];
    
    self.videoCamera = [[KTVVPVideoCamera alloc] initWithContext:self.context];
    [self.videoCamera addInput:self.frameView];
    [self.videoCamera startRunning];
}

@end