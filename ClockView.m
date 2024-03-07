#import "ClockView.h"

@implementation ClockView
- (id) init {
    self = [super init];
    self->posHour = NSMakePoint(0,0);
    self->posMinute = NSMakePoint(0,0);
    return self;
}

- (void) drawRect: (NSRect) frame {
    NSPoint origin = NSMakePoint(frame.size.width/2, frame.size.height/2);

    NSBezierPath* BP = [NSBezierPath bezierPathWithRect: [self bounds]];
    [[NSColor yellowColor] set];
    [BP fill];

    BP = [NSBezierPath bezierPathWithRect: NSMakeRect(
        1,1, frame.size.width-2, frame.size.height-2
    )];

    [[NSColor blackColor] set];
    [BP stroke];

    BP = [NSBezierPath bezierPath];
    [BP setLineWidth: 3];
    [BP moveToPoint: origin];
    [BP relativeLineToPoint: self->posHour];
    [BP stroke];

    [BP setLineWidth: 1];
    [BP moveToPoint: origin];
    [BP relativeLineToPoint: self->posMinute];
    [BP stroke];
}

- (void) setDate: (NSCalendarDate *) date {
    int hour = [date hourOfDay];
    int minute = [date minuteOfHour];
    float hour_x = 40*sin((M_PI*hour/6)+(M_PI*minute/360));
    float hour_y = 40*cos((M_PI*hour/6)+(M_PI*minute/360));
    float minute_x = 60*sin(M_PI*minute/30);
    float minute_y = 60*cos(M_PI*minute/30);

    self->posHour = NSMakePoint(hour_x, hour_y);
    self->posMinute = NSMakePoint(minute_x, minute_y);
    [self setNeedsDisplay: YES];
}

@end