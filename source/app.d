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

