import std.stdio;
import xcb_struct;


void 
main () {
	// INIT
    auto xcb       = XCB ();
    //auto c         = xcb.connect (true,"ASUS-K53SD");
    auto c         = xcb.connect (false,"");
    auto screen    = c.screen;
    auto window    = c.window (screen);

    writeln ("width x height (in pixels): ", screen.width_in_pixels, "x", screen.height_in_pixels);
    writeln ("hwnd: ",window);

    // EVENT LOOP
    foreach (event; c.events) {
        writeln (event);
    }

    c.disconnect ();
}

