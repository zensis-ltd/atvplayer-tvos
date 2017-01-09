//
//  ObjcViewController.m
//  ATVPlayer-Demo
//
//  Created by vincent on 6/1/2017.
//  Copyright © 2017 ATVPlayer. All rights reserved.
//

#import "ObjcViewController.h"
#import <ATVPlayer/ATVPlayer-umbrella.h>

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
//    adContainer.adLoadingText = @"Ad loading..";
//    adContainer.adCountdownText = @"Remaind: %d";
    NSString *currentTimestamp = [[NSNumber numberWithDouble:[[NSDate date] timeIntervalSince1970]] stringValue];
    NSString *prerollUrlStr = [@"https://pubads.g.doubleclick.net/gampad/ads?slotname=/124319096/external/ad_rule_samples&sz=640x480&ciu_szs=300x250&unviewed_position_start=1&output=xml_vast3&impl=s&env=vp&gdfp_req=1&ad_rule=0&vad_type=linear&vpos=preroll&pod=1&ppos=1&lip=true&min_ad_duration=0&max_ad_duration=30000&cust_params=deployment%3Ddevsite%26sample_ar%3Dpremidpost&url=https://developers.google.com/interactive-media-ads/docs/sdks/html5/tags&video_doc_id=short_onecue&cmsid=496&kfa=0&tfcd=0&correlator=" stringByAppendingString:currentTimestamp];
    NSString *midrollUrlStr = [@"https://pubads.g.doubleclick.net/gampad/ads?slotname=/124319096/external/ad_rule_samples&sz=640x480&ciu_szs=300x250&unviewed_position_start=1&output=xml_vast3&impl=s&env=vp&gdfp_req=1&ad_rule=0&vad_type=linear&vpos=midroll&pod=2&mridx=1&ppos=1&lip=true&min_ad_duration=0&max_ad_duration=30000&cust_params=deployment%3Ddevsite%26sample_ar%3Dpremidpost&url=https://developers.google.com/interactive-media-ads/docs/sdks/html5/tags&video_doc_id=short_onecue&cmsid=496&kfa=0&tfcd=0&correlator=" stringByAppendingString:currentTimestamp];
    NSString *postrollUrlStr = [@"https://pubads.g.doubleclick.net/gampad/ads?slotname=/124319096/external/ad_rule_samples&sz=640x480&ciu_szs=300x250&unviewed_position_start=1&output=xml_vast3&impl=s&env=vp&gdfp_req=1&ad_rule=0&vad_type=linear&vpos=postroll&pod=3&ppos=1&lip=true&min_ad_duration=0&max_ad_duration=30000&cust_params=deployment%3Ddevsite%26sample_ar%3Dpremidpost&url=https://developers.google.com/interactive-media-ads/docs/sdks/html5/tags&video_doc_id=short_onecue&cmsid=496&kfa=0&tfcd=0&correlator=" stringByAppendingString:currentTimestamp];
    
    [adContainer addAdBreak:[[ATVAd alloc] initPreRollWithVastUrl:[NSURL URLWithString:prerollUrlStr]]];
    [adContainer addAdBreak:[[ATVAd alloc] initMidRollWithVastUrl:[NSURL URLWithString:midrollUrlStr] offset:20]];
    [adContainer addAdBreak:[[ATVAd alloc] initPostRollWithVastUrl:[NSURL URLWithString:postrollUrlStr]]];
    self.player.adSchedule = adContainer;
    
    NSString *videoUrl = @"https://devimages.apple.com.edgekey.net/streaming/examples/bipbop_16x9/bipbop_16x9_variant.m3u8";
    //video subtitle
    NSString *srtUrl = @"http://atvplayer.zensis.com/demo/demo.srt";
    ATVSubtitleConfig *subtitleConf = [ATVSubtitleConfig initWithSubtitles:@[[ATVSubtitle subtitleWithUrl:[NSURL URLWithString:srtUrl] label:@"English"]]];
    self.player.subtitle = subtitleConf;
    //overlay view for channel icon
    UIView *overlayView = [[[NSBundle mainBundle] loadNibNamed:@"Overlay" owner:self options:nil] objectAtIndex:0];
    self.player.overlayView = overlayView;
    
    //video info
    
    //present the player
    [self.player presentWithController:self];
    ATVMediaItem *item = [ATVMediaItem itemWithUrl:[NSURL URLWithString:videoUrl]];
    item.videoTitle = @"ATVPlayer Demo";
    item.videoThumbnail = [UIImage imageNamed:@"logo"];
    item.videoDescription = @"Video Advertising for tvOS\nhttp://atvplayer.zensis.com";
    [self.player playWithMediaItem:item startPosition:0];
}

-(void)playerDidDismiss{
    //called when player dismiss
    self.player.delegate = nil;
    self.player = nil;
    [self.navigationController popViewControllerAnimated:YES];
}


@end
