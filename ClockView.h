#import <AppKit/AppKit.h>
#import <math.h>

@interface ClockView : NSView
{
    NSPoint posHour, posMinute;
}

- (void) setDate: (NSCalendarDate *) aDate;
@end
