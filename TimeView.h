/* All rights reserved */

#import <AppKit/AppKit.h>

@interface TimeView : NSControl
{
    NSTextField *labelDate, *labelTime;
    NSTextField *localDate, *localTime;
    NSCalendarDate* date;
}

- (NSCalendarDate*) date;
- (void) setDate: (NSCalendarDate*) date;

@end
