#import <Foundation/Foundation.h>

typedef void (^PulseTick)(NSInteger rssi, NSString *uuid);

@interface PulseEngine : NSObject
@property (nonatomic, copy) PulseTick onTick;
- (void)start;
@end
