//
//  ObjcViewController.m
//  ATVPlayer-Demo
//
//  Created by vincent on 6/1/2017.
//  Copyright © 2017 ATVPlayer. All rights reserved.
//

#import "ObjcViewController.h"
#import <ATVPlayer/ATVPlayer.h>

@interface ObjcViewController () <ATVVideoPlayerDelegate>

@property (nonatomic) ATVVideoPlayer *player;

@end

@implementation ObjcViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.player = [[ATVVideoPlayer alloc] init];
    self.player.delegate = self;
    
    //Video ad: preroll, midroll, postroll
    ATVAdSchedule *adContainer = [[ATVAdSchedule alloc] init];
    adContainer.adLoadingText = @"Ad loading..";
    adContainer.adCountdownText = @"Countdown: %d";
    
    NSString *prerollUrlStr = @"https://atvplayer.zensis.com/demo/vast/vast.xml";
    NSString *midrollUrlStr = @"https://atvplayer.zensis.com/demo/vast/vast.xml";
    NSString *postrollUrlStr = @"https://atvplayer.zensis.com/demo/vast/vast.xml";
    
    [adContainer addAdBreak:[[ATVAd alloc] initPreRollWithVastUrl:[NSURL URLWithString:prerollUrlStr]]];
    [adContainer addAdBreak:[[ATVAd alloc] initMidRollWithVastUrl:[NSURL URLWithString:midrollUrlStr] offset:20]];
    [adContainer addAdBreak:[[ATVAd alloc] initPostRollWithVastUrl:[NSURL URLWithString:postrollUrlStr]]];
    self.player.adSchedule = adContainer;
    
    NSString *videoUrl = @"https://devimages.apple.com.edgekey.net/streaming/examples/bipbop_16x9/bipbop_16x9_variant.m3u8";
    //video subtitle
    NSString *srtUrl = @"https://atvplayer.zensis.com/demo/demo.srt";
    ATVSubtitleConfig *subtitleConf = [ATVSubtitleConfig initWithSubtitles:@[[ATVSubtitle subtitleWithUrl:[NSURL URLWithString:srtUrl] label:@"English"]]];
    self.player.subtitle = subtitleConf;
    //overlay view for channel icon
    UIView *overlayView = [[[NSBundle mainBundle] loadNibNamed:@"Overlay" owner:self options:nil] objectAtIndex:0];
    self.player.overlayView = overlayView;
    
    //video info
    ATVMediaItem *item = [ATVMediaItem itemWithUrl:[NSURL URLWithString:videoUrl]];
    item.videoTitle = @"ATVPlayer Demo";
    item.videoThumbnail = [UIImage imageNamed:@"logo"];
    item.videoDescription = @"Video Advertising for tvOS\nhttps://atvplayer.zensis.com";
    //present the player
    [self.player presentWithController:self];
    [self.player playWithMediaItem:item startPosition:0];
}

-(void)playerDidDismiss{
    //called when player dismiss
    self.player.delegate = nil;
    self.player = nil;
    [self.navigationController popViewControllerAnimated:YES];
}



@end
