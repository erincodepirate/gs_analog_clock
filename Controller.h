/* All rights reserved */

#import <AppKit/AppKit.h>
#import "TimeView.h"

@interface Controller : NSObject
{
  IBOutlet id timeView;
}
- (IBAction) showCurrentTime: (id)sender;

@end
