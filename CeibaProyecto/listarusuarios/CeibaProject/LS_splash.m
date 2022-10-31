
#import "iCore.h"
@interface LS_splash:NSObject
@end

@implementation LS_splash

- (void)LS_general:(B4ILayoutData*)views :(int)width :(int)height{
[B4ILayoutBuilder setScaleRate:0.3];
[views get:@"img"].Height = (int)((90 / 100.0 * width));
[views get:@"img"].Width = (int)(([views get:@"img"].Height));
[views get:@"img"].Left = (int)((50 / 100.0 * width) - ([views get:@"img"].Width / 2));
[views get:@"img"].Top = (int)((50 / 100.0 * height) - ([views get:@"img"].Height / 2));
[views get:@"background"].Width = (int)((110 / 100.0 * height));
[views get:@"background"].Height = (int)((110 / 100.0 * height));
[views get:@"background"].Left = (int)((50 / 100.0 * width) - ([views get:@"background"].Width / 2));
[views get:@"background"].Top = (int)((50 / 100.0 * height) - ([views get:@"background"].Height / 2));
[views get:@"lbluiionverse"].Width = (int)((100 / 100.0 * width)-(40 * 1));
[views get:@"lbluiionverse"].Height = (int)((35 * 1));
[views get:@"lbluiionverse"].Left = (int)((20 * 1));
[views get:@"lbluiionverse"].Top = (int)((100 / 100.0 * height)-(20 * 1) - ([views get:@"lbluiionverse"].Height));

}
@end
