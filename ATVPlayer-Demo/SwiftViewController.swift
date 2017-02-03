//
//  SwiftViewController.swift
//  ATVPlayer-Demo
//
//  Created by vincent on 6/1/2017.
//  Copyright © 2017 ATVPlayer. All rights reserved.
//

import UIKit
import Foundation
import ATVPlayer

@objc class SwiftViewController: UIViewController,ATVVideoPlayerDelegate {
    var player : ATVVideoPlayer = ATVVideoPlayer.init()
    override func viewDidLoad() {
        super.viewDidLoad()
        player.delegate = self
        
        //Video ad: preroll, midroll, postroll
        let adContainer:ATVAdSchedule = ATVAdSchedule.init()
        
        adContainer.adLoadingText = "Ad loading..";
        adContainer.adCountdownText = "Countdown: %d";
        let prerollUrlStr : String = "https://atvplayer.zensis.com/demo/vast/vast.xml";
        let midrollUrlStr : String = "https://atvplayer.zensis.com/demo/vast/vast.xml";
        let postrollUrlStr = "https://atvplayer.zensis.com/demo/vast/vast.xml";
        
        adContainer.addAdBreak(ATVAd.init(preRollWithVastUrl: URL.init(string: prerollUrlStr)))
        adContainer.addAdBreak(ATVAd.init(midRollWithVastUrl: URL.init(string: midrollUrlStr), offset: 20))
        adContainer.addAdBreak(ATVAd.init(postRollWithVastUrl: URL.init(string: postrollUrlStr)))
        player.adSchedule = adContainer
        
        let videoUrl : String = "https://devimages.apple.com.edgekey.net/streaming/examples/bipbop_16x9/bipbop_16x9_variant.m3u8";
        //video subtitle
        let srtUrl : String = "https://atvplayer.zensis.com/demo/demo.srt";
        let atvSubtitle : ATVSubtitle = ATVSubtitle.init(url: URL.init(string: srtUrl), label: "English")
        let subtitleConf : ATVSubtitleConfig = ATVSubtitleConfig.initWith([atvSubtitle])
        self.player.subtitle = subtitleConf;
        
        //overlay view for channel icon
        let overlayView = Bundle.main.loadNibNamed("Overlay", owner: self, options: nil)?[0] as! UIView
        self.player.overlayView = overlayView;
        
        //video info
        let item : ATVMediaItem = ATVMediaItem.init(url: URL.init(string: videoUrl))
        item.videoTitle = "ATVPlayer Demo";
        item.videoThumbnail = UIImage.init(named: "logo");
        item.videoDescription = "Video Advertising for tvOS\nhttps://atvplayer.zensis.com";
        //present the player
        player.present(with: self)
        player.play(with: item, startPosition: 0)
        
    }
    
    func playerDidDismiss() {
        self.navigationController?.popViewController(animated: true)
    }
}
