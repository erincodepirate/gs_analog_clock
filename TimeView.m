/* All rights reserved */

#import <AppKit/AppKit.h>
#import "TimeView.h"

@implementation TimeView
- (id) initWithFrame: (NSRect) frame {
    NSBox *box;

    self = [super initWithFrame: frame];
    box = [
        [NSBox alloc]
        initWithFrame: NSMakeRect(
            0, 0,
            frame.size.width,
            frame.size.height
        )
    ];
    [box setBorderType: NSGrooveBorder];
    [box setTitlePosition: NSAtTop];
    [box setTitle: @"Local Time"];

    self->clockView = [
        [ClockView alloc]
        initWithFrame: NSMakeRect(0, 70, frame.size.width, frame.size.height)
    ];

    self->labelDate = [
        [NSTextField alloc]
        initWithFrame: NSMakeRect(10,45,35,20)
    ];

    [self->labelDate setStringValue: @"Date: "];
    [self->labelDate setBezeled: NO];
    [self->labelDate setBackgroundColor: [NSColor windowBackgroundColor]];
    [self->labelDate setEditable: NO];

    self->labelTime = [
        [NSTextField alloc]
        initWithFrame: NSMakeRect(10,15,35,20)
    ];

    [self->labelTime setStringValue: @"Time: "];
    [self->labelTime setBezeled: NO];
    [self->labelTime setBackgroundColor: [NSColor windowBackgroundColor]];
    [self->labelTime setEditable: NO];

    self->localDate = [
        [NSTextField alloc]
        initWithFrame: NSMakeRect(55,45,130,20)
    ];
    self->localTime = [
        [NSTextField alloc]
        initWithFrame: NSMakeRect(55,15,130,20)
    ];

    [box addSubview: self->clockView];
    [box addSubview: self->labelDate];
    [box addSubview: self->labelTime];
    [box addSubview: self->localDate];
    [box addSubview: self->localTime];
    [self->clockView release];
    [self->labelDate release];
    [self->labelTime release];
    [self->localDate release];
    [self->localTime release];

    [self addSubview: box];
    [box release];

    return self;
}

- (NSCalendarDate *) date {
    return self->date;
}

- (void) setDate: (NSCalendarDate *) aDate {
    self->date = aDate;
    [self->date setCalendarFormat: @"%a, %b %e, %Y"];
    [self->localDate setStringValue: [self->date description]];
    [self->date setCalendarFormat: @"%H : %M : %S"];
    [self->localTime setStringValue: [self->date description]];
    [self->clockView setDate: self->date];
}

- (void) dealloc {
    [self->date release];
    [super dealloc];
}

@end
