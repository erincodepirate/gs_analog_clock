/* All rights reserved */

#import <AppKit/AppKit.h>
#import "ClockView.h"

@interface TimeView : NSControl
{
    NSTextField *labelDate, *labelTime;
    NSTextField *localDate, *localTime;
    NSCalendarDate* date;
    ClockView* clockView;
}

- (NSCalendarDate*) date;
- (void) setDate: (NSCalendarDate*) date;

@end
