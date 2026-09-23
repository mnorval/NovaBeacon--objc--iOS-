#import "BeaconViewController.h"
#import "PulseEngine.h"

@interface BeaconViewController ()
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *rssiLabel;
@property (nonatomic, strong) PulseEngine *engine;
@end

@implementation BeaconViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0.04 green:0.06 blue:0.12 alpha:1];

    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(24, 80, self.view.bounds.size.width - 48, 40)];
    self.titleLabel.text = @"NOVABEACON";
    self.titleLabel.textColor = [UIColor colorWithRed:0.72 green:0.85 blue:1 alpha:1];
    self.titleLabel.font = [UIFont systemFontOfSize:22 weight:UIFontWeightSemibold];
    [self.view addSubview:self.titleLabel];

    self.rssiLabel = [[UILabel alloc] initWithFrame:CGRectMake(24, 140, self.view.bounds.size.width - 48, 80)];
    self.rssiLabel.textColor = [UIColor colorWithRed:0.21 green:0.88 blue:0.67 alpha:1];
    self.rssiLabel.font = [UIFont monospacedDigitSystemFontOfSize:36 weight:UIFontWeightMedium];
    self.rssiLabel.numberOfLines = 2;
    [self.view addSubview:self.rssiLabel];

    self.engine = [[PulseEngine alloc] init];
    __weak typeof(self) weakSelf = self;
    self.engine.onTick = ^(NSInteger rssi, NSString *uuid) {
        weakSelf.rssiLabel.text = [NSString stringWithFormat:@"RSSI  %ld dBm\n%@", (long)rssi, uuid];
    };
    [self.engine start];
}

@end
