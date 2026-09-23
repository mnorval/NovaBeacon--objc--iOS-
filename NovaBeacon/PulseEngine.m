#import "PulseEngine.h"

@implementation PulseEngine {
    NSTimer *_timer;
}

- (void)start {
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.6
                                              target:self
                                            selector:@selector(tick)
                                            userInfo:nil
                                             repeats:YES];
}

- (void)tick {
    NSInteger rssi = -40 - (arc4random_uniform(45));
    NSString *uuid = @"E2C56DB5-DFFB-48D2-B060-D0F5A71096E0";
    if (self.onTick) self.onTick(rssi, uuid);
}

@end
