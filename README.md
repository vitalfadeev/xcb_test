# XCB D bindings

[](source/app.d)

```D
import std.stdio;
import xcb_struct;


void 
main () {
    // INIT
    auto xcb       = XCB ();
    //auto c         = xcb.connect (true,"ASUS-K53SD");
    auto c         = xcb.connect (false,null);
    auto screen    = c.screen;
    auto window    = c.window (screen,0,0,800,600);

    writeln ("screen width x height (in pixels): ", screen.width_in_pixels, "x", screen.height_in_pixels);
    writeln ("window: ",window);

    // EVENT LOOP
    foreach (Event event; c.events) {
        switch (event.type) {
            case Event.Type.KEY_PRESS   : 
            case Event.Type.KEY_RELEASE : 
                writeln (event.keyboard);
                break;
            case Event.Type.BUTTON_PRESS   : 
            case Event.Type.BUTTON_RELEASE : 
                writeln (event.button);
                break;
            case Event.Type.MOTION_NOTIFY : 
                writeln (event.motion);
                break;
            case Event.Type.EXPOSE : 
                writeln (event.expose);
                break;
            default : writeln (event);
        }
    }

    c.disconnect ();
}
```

output:

```
screen width x height (in pixels): 1366x768
window: Window: 18874368
Event: CONFIGURE_NOTIFY
Event: REPARENT_NOTIFY
Event: CONFIGURE_NOTIFY
Event: MAP_NOTIFY
Event: EXPOSE, Window: 18874368, xy wh (0,0 800 x 600),
Event: CONFIGURE_NOTIFY
Event: _
Event: KEY_PRESS, 105
Event: KEY_RELEASE, 105
Event: KEY_PRESS, 105
Event: KEY_RELEASE, 105
Event: FOCUS_OUT
Event: _
Event: KEY_RELEASE, 23
Event: MOTION_NOTIFY, XCB_NOTIFY_DETAIL_ANCESTOR, xy (24,321), state (16)
Event: MOTION_NOTIFY, XCB_NOTIFY_DETAIL_ANCESTOR, xy (48,321), state (16)
Event: MOTION_NOTIFY, XCB_NOTIFY_DETAIL_ANCESTOR, xy (74,321), state (16)
Event: MOTION_NOTIFY, XCB_NOTIFY_DETAIL_ANCESTOR, xy (96,321), state (16)
Event: MOTION_NOTIFY, XCB_NOTIFY_DETAIL_ANCESTOR, xy (120,319), state (16)
Event: MOTION_NOTIFY, XCB_NOTIFY_DETAIL_ANCESTOR, xy (144,319), state (16)
Event: MOTION_NOTIFY, XCB_NOTIFY_DETAIL_ANCESTOR, xy (166,315), state (16)
Event: MOTION_NOTIFY, XCB_NOTIFY_DETAIL_ANCESTOR, xy (183,315), state (16)
Event: MOTION_NOTIFY, XCB_NOTIFY_DETAIL_ANCESTOR, xy (200,312), state (16)
Event: MOTION_NOTIFY, XCB_NOTIFY_DETAIL_ANCESTOR, xy (214,310), state (16)
Event: MOTION_NOTIFY, XCB_NOTIFY_DETAIL_ANCESTOR, xy (225,308), state (16)
Event: MOTION_NOTIFY, XCB_NOTIFY_DETAIL_ANCESTOR, xy (234,307), state (16)
Event: MOTION_NOTIFY, XCB_NOTIFY_DETAIL_ANCESTOR, xy (240,304), state (16)
Event: MOTION_NOTIFY, XCB_NOTIFY_DETAIL_ANCESTOR, xy (247,304), state (16)
Event: MOTION_NOTIFY, XCB_NOTIFY_DETAIL_ANCESTOR, xy (249,304), state (16)
Event: MOTION_NOTIFY, XCB_NOTIFY_DETAIL_ANCESTOR, xy (250,303), state (16)
Event: BUTTON_PRESS, 1, xy (250,303), state (16)
Event: BUTTON_RELEASE, 1, xy (250,303), state (272)
Event: BUTTON_PRESS, 1, xy (250,303), state (16)
Event: MOTION_NOTIFY, XCB_NOTIFY_DETAIL_ANCESTOR, xy (251,303), state (272)
Event: BUTTON_RELEASE, 1, xy (251,303), state (272)
Event: KEY_PRESS, 37
Event: KEY_PRESS, 54
Event: KEY_RELEASE, 54
Event: KEY_RELEASE, 37
Event: KEY_PRESS, 37
```
