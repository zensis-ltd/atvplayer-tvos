**Version 2.0.1 / Version 2.0.0 (Oct 16, 2018)**

1. Add support on Ad pod  
2. Add *adpodCountdownText* to ATVAdSchedule  
3. Add support on ad title and ad description of ATVAd  
4. Add methods to ATVPlayer:   
    - *videoDuration*
    - *getClosedCaptionLanguageList*
    - *setClosedCaption:language*
    - *currentClosedCaption*
    - *disableAutoClosedCaptionOptions* 

5. Add methods to ATVVideoPlayerDelegate: 
    - *videoAdOnRequest:adBreak*
    - *videoAdOnResponse:adBreak*
    - *videoAdOnPause:adBreak:duration:second*
    - *videoAdOnTime:adBreak:duration:second*
    - *videoAdOnPlayQuartile:adBreak:quartile:duration*
    - *videoAdOnBuffer:adBreak:duration:second*
    - *playerWillDismiss*
    - *videoClosedCaptionDidChange:languageCode*
    - *videoAdOnPodStart:adBreak*
    - *videoAdOnPodComplete:adBreak*

6. Add enum ATVVastError to identify different ad errors  
For method *videoOnError:error*, **error** change from NSString to NSError

7. Deprecated methods:
    - videoAdOnError:adBreak:error 
      - replaced by videoAdOnError:adBreak:error:desc which error is ATVVastError enum
    - videoOnPlay
      - replaced by videoOnPlay:second:duration
    - videoOnTime:second 
      - replaced by videoOnTime:second:duration
    - videoOnPause:second 
      - replaced by videoOnPause:second:duration
    - videoDidBuffer 
      - replaced by videoOnBuffer

8. ATVVideoPlayerDelegate instance changes from strong to weak reference
9. Bug Fixes