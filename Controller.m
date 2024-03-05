/* All rights reserved */

#import <AppKit/AppKit.h>
#import "Controller.h"

@implementation Controller


- (IBAction) showCurrentTime: (id)sender
{
    NSCalendarDate *date = [NSCalendarDate date];
    [self->timeView setDate: date];
}

@end
